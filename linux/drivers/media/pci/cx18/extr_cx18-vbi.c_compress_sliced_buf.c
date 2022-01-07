
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct v4l2_decode_vbi_line {int* p; int line; int is_second_field; scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__* sliced_data; } ;
struct cx18 {TYPE_2__ vbi; int sd_av; scalar_t__ is_60hz; } ;
struct TYPE_3__ {int data; int line; int field; scalar_t__ id; } ;


 int VBI_HBLANK_SAMPLES_50HZ ;
 int VBI_HBLANK_SAMPLES_60HZ ;
 int decode_vbi_line ;
 int memcpy (int ,int*,int) ;
 int* sliced_vbi_eav_rp ;
 int v4l2_subdev_call (int ,struct v4l2_decode_vbi_line,int ,struct v4l2_decode_vbi_line*) ;

__attribute__((used)) static u32 compress_sliced_buf(struct cx18 *cx, u8 *buf, u32 size,
          const u32 hdr_size)
{
 struct v4l2_decode_vbi_line vbi;
 int i;
 u32 line = 0;
 u32 line_size = cx->is_60hz ? VBI_HBLANK_SAMPLES_60HZ
        : VBI_HBLANK_SAMPLES_50HZ;


 for (i = hdr_size, buf += hdr_size; i < size; i++, buf++) {
  if (buf[0] == 0xff && !buf[1] && !buf[2] &&
      (buf[3] == sliced_vbi_eav_rp[0] ||
       buf[3] == sliced_vbi_eav_rp[1]))
   break;
 }






 size -= (i - hdr_size);
 if (size < line_size)
  return line;

 for (i = 0; i < size / line_size; i++) {
  u8 *p = buf + i * line_size;


  if (p[0] != 0xff || p[1] || p[2] ||
      (p[3] != sliced_vbi_eav_rp[0] &&
       p[3] != sliced_vbi_eav_rp[1]))
   continue;
  vbi.p = p + 4;
  v4l2_subdev_call(cx->sd_av, vbi, decode_vbi_line, &vbi);
  if (vbi.type) {
   cx->vbi.sliced_data[line].id = vbi.type;
   cx->vbi.sliced_data[line].field = vbi.is_second_field;
   cx->vbi.sliced_data[line].line = vbi.line;
   memcpy(cx->vbi.sliced_data[line].data, vbi.p, 42);
   line++;
  }
 }
 return line;
}
