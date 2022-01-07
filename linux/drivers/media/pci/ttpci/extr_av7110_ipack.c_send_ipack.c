
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct ipack {int mpeg; int count; int* buf; int cid; int data; int (* func ) (int*,int,int ) ;int repack_subids; } ;
struct dvb_audio_info {int framesize; int off; } ;
typedef void* ac3_off ;


 int PRIVATE_STREAM1 ;
 int dvb_filter_get_ac3info (int ,int ,struct dvb_audio_info*,int ) ;
 int stub1 (int*,int,int ) ;
 int stub2 (int*,int,int ) ;

__attribute__((used)) static void send_ipack(struct ipack *p)
{
 int off;
 struct dvb_audio_info ai;
 int ac3_off = 0;
 int streamid = 0;
 int nframes = 0;
 int f = 0;

 switch (p->mpeg) {
 case 2:
  if (p->count < 10)
   return;
  p->buf[3] = p->cid;
  p->buf[4] = (u8)(((p->count - 6) & 0xff00) >> 8);
  p->buf[5] = (u8)((p->count - 6) & 0x00ff);
  if (p->repack_subids && p->cid == PRIVATE_STREAM1) {
   off = 9 + p->buf[8];
   streamid = p->buf[off];
   if ((streamid & 0xf8) == 0x80) {
    ai.off = 0;
    ac3_off = ((p->buf[off + 2] << 8)|
        p->buf[off + 3]);
    if (ac3_off < p->count)
     f = dvb_filter_get_ac3info(p->buf + off + 3 + ac3_off,
           p->count - ac3_off, &ai, 0);
    if (!f) {
     nframes = (p->count - off - 3 - ac3_off) /
      ai.framesize + 1;
     p->buf[off + 2] = (ac3_off >> 8) & 0xff;
     p->buf[off + 3] = (ac3_off) & 0xff;
     p->buf[off + 1] = nframes;
     ac3_off += nframes * ai.framesize - p->count;
    }
   }
  }
  p->func(p->buf, p->count, p->data);

  p->buf[6] = 0x80;
  p->buf[7] = 0x00;
  p->buf[8] = 0x00;
  p->count = 9;
  if (p->repack_subids && p->cid == PRIVATE_STREAM1
      && (streamid & 0xf8) == 0x80) {
   p->count += 4;
   p->buf[9] = streamid;
   p->buf[10] = (ac3_off >> 8) & 0xff;
   p->buf[11] = (ac3_off) & 0xff;
   p->buf[12] = 0;
  }
  break;

 case 1:
  if (p->count < 8)
   return;
  p->buf[3] = p->cid;
  p->buf[4] = (u8)(((p->count - 6) & 0xff00) >> 8);
  p->buf[5] = (u8)((p->count - 6) & 0x00ff);
  p->func(p->buf, p->count, p->data);

  p->buf[6] = 0x0f;
  p->count = 7;
  break;
 }
}
