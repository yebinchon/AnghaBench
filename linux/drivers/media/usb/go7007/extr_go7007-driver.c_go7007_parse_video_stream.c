
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {TYPE_1__* planes; } ;
struct TYPE_6__ {TYPE_2__ vb2_buf; } ;
struct go7007_buffer {int frame_offset; int modet_active; TYPE_3__ vb; } ;
struct go7007 {int format; int state; int seen_frame; int parse_length; int modet_word; int active_map; int modet_enable; struct go7007_buffer* active_buf; int v4l2_dev; } ;
struct TYPE_4__ {int bytesused; } ;


 int GO7007_BUF_SIZE ;
 int const V4L2_PIX_FMT_MJPEG ;



 struct go7007_buffer* frame_boundary (struct go7007*,struct go7007_buffer*) ;
 int memset (int ,int ,int) ;
 int store_byte (struct go7007_buffer*,int) ;
 int v4l2_info (int *,char*) ;
 int write_bitmap_word (struct go7007*) ;

void go7007_parse_video_stream(struct go7007 *go, u8 *buf, int length)
{
 struct go7007_buffer *vb = go->active_buf;
 int i, seq_start_code = -1, gop_start_code = -1, frame_start_code = -1;

 switch (go->format) {
 case 128:
  seq_start_code = 0xB0;
  gop_start_code = 0xB3;
  frame_start_code = 0xB6;
  break;
 case 130:
 case 129:
  seq_start_code = 0xB3;
  gop_start_code = 0xB8;
  frame_start_code = 0x00;
  break;
 }

 for (i = 0; i < length; ++i) {
  if (vb && vb->vb.vb2_buf.planes[0].bytesused >=
    GO7007_BUF_SIZE - 3) {
   v4l2_info(&go->v4l2_dev, "dropping oversized frame\n");
   vb->vb.vb2_buf.planes[0].bytesused = 0;
   vb->frame_offset = 0;
   vb->modet_active = 0;
   vb = go->active_buf = ((void*)0);
  }

  switch (go->state) {
  case 136:
   switch (buf[i]) {
   case 0x00:
    go->state = 139;
    break;
   case 0xFF:
    go->state = 135;
    break;
   default:
    store_byte(vb, buf[i]);
    break;
   }
   break;
  case 139:
   switch (buf[i]) {
   case 0x00:
    go->state = 138;
    break;
   case 0xFF:
    store_byte(vb, 0x00);
    go->state = 135;
    break;
   default:
    store_byte(vb, 0x00);
    store_byte(vb, buf[i]);
    go->state = 136;
    break;
   }
   break;
  case 138:
   switch (buf[i]) {
   case 0x00:
    store_byte(vb, 0x00);

    break;
   case 0x01:
    go->state = 137;
    break;
   case 0xFF:
    store_byte(vb, 0x00);
    store_byte(vb, 0x00);
    go->state = 135;
    break;
   default:
    store_byte(vb, 0x00);
    store_byte(vb, 0x00);
    store_byte(vb, buf[i]);
    go->state = 136;
    break;
   }
   break;
  case 137:
   if (buf[i] == 0xF8 && go->modet_enable == 0) {

    store_byte(vb, 0x00);
    store_byte(vb, 0x00);
    store_byte(vb, 0x01);
    store_byte(vb, 0xF8);
    go->state = 136;
    break;
   }


   if ((go->format == 130 ||
        go->format == 129 ||
        go->format == 128) &&
       (buf[i] == seq_start_code ||
        buf[i] == gop_start_code ||
        buf[i] == frame_start_code)) {
    if (vb == ((void*)0) || go->seen_frame)
     vb = frame_boundary(go, vb);
    go->seen_frame = buf[i] == frame_start_code;
    if (vb && go->seen_frame)
     vb->frame_offset =
     vb->vb.vb2_buf.planes[0].bytesused;
   }


   switch (buf[i]) {
   case 0xF5:
    go->parse_length = 12;
    go->state = 133;
    break;
   case 0xF6:
    go->state = 132;
    break;
   case 0xF8:
    go->parse_length = 0;
    memset(go->active_map, 0,
      sizeof(go->active_map));
    go->state = 134;
    break;
   case 0xFF:
    store_byte(vb, 0x00);
    store_byte(vb, 0x00);
    store_byte(vb, 0x01);
    go->state = 135;
    break;
   default:
    store_byte(vb, 0x00);
    store_byte(vb, 0x00);
    store_byte(vb, 0x01);
    store_byte(vb, buf[i]);
    go->state = 136;
    break;
   }
   break;
  case 135:
   switch (buf[i]) {
   case 0x00:
    store_byte(vb, 0xFF);
    go->state = 139;
    break;
   case 0xFF:
    store_byte(vb, 0xFF);

    break;
   case 0xD8:
    if (go->format == V4L2_PIX_FMT_MJPEG)
     vb = frame_boundary(go, vb);

   default:
    store_byte(vb, 0xFF);
    store_byte(vb, buf[i]);
    go->state = 136;
    break;
   }
   break;
  case 132:
   go->parse_length = buf[i] << 8;
   go->state = 131;
   break;
  case 131:
   go->parse_length |= buf[i];
   if (go->parse_length > 0)
    go->state = 133;
   else
    go->state = 136;
   break;
  case 134:
   if (go->parse_length < 204) {
    if (go->parse_length & 1) {
     go->modet_word |= buf[i];
     write_bitmap_word(go);
    } else
     go->modet_word = buf[i] << 8;
   } else if (go->parse_length == 207 && vb) {
    vb->modet_active = buf[i];
   }
   if (++go->parse_length == 208)
    go->state = 136;
   break;
  case 133:
   if (--go->parse_length == 0)
    go->state = 136;
   break;
  }
 }
}
