
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct cx18_stream {int handle; struct cx18* cx; } ;
struct TYPE_4__ {int sliced; int vbi; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
struct TYPE_6__ {int count; int* start; TYPE_2__ in; } ;
struct cx18 {scalar_t__ is_60hz; TYPE_3__ vbi; int sd_av; } ;


 int CX18_CPU_SET_RAW_VBI_PARAM ;
 int CX18_DEBUG_INFO (char*,int,int,int,int,int,int) ;
 int CX2341X_MBOX_MAX_DATA ;
 int VBI_ACTIVE_SAMPLES ;
 int VBI_HBLANK_SAMPLES_50HZ ;
 int VBI_HBLANK_SAMPLES_60HZ ;
 int cx18_api (struct cx18*,int ,int,int*) ;
 int cx18_raw_vbi (struct cx18*) ;
 int s_raw_fmt ;
 int s_sliced_fmt ;
 int v4l2_subdev_call (int ,int ,int ,int *) ;
 int vbi ;

__attribute__((used)) static void cx18_vbi_setup(struct cx18_stream *s)
{
 struct cx18 *cx = s->cx;
 int raw = cx18_raw_vbi(cx);
 u32 data[CX2341X_MBOX_MAX_DATA];
 int lines;

 if (cx->is_60hz) {
  cx->vbi.count = 12;
  cx->vbi.start[0] = 10;
  cx->vbi.start[1] = 273;
 } else {
  cx->vbi.count = 18;
  cx->vbi.start[0] = 6;
  cx->vbi.start[1] = 318;
 }


 if (raw)
  v4l2_subdev_call(cx->sd_av, vbi, s_raw_fmt, &cx->vbi.in.fmt.vbi);
 else
  v4l2_subdev_call(cx->sd_av, vbi, s_sliced_fmt, &cx->vbi.in.fmt.sliced);
 if (raw) {
  lines = cx->vbi.count * 2;
 } else {
  lines = cx->is_60hz ? (21 - 4 + 1) * 2 : (23 - 2 + 1) * 2;
 }

 data[0] = s->handle;

 data[1] = (lines / 2) | ((lines / 2) << 16);

 data[2] = (raw ? VBI_ACTIVE_SAMPLES
         : (cx->is_60hz ? VBI_HBLANK_SAMPLES_60HZ
          : VBI_HBLANK_SAMPLES_50HZ));


 data[3] = 1;




 if (raw) {





  data[4] = 0x20602060;







  data[5] = 0x307090d0;
 } else {
  data[4] = 0xB0F0B0F0;





  data[5] = 0xA0E0A0E0;
 }

 CX18_DEBUG_INFO("Setup VBI h: %d lines %x bpl %d fr %d %x %x\n",
   data[0], data[1], data[2], data[3], data[4], data[5]);

 cx18_api(cx, CX18_CPU_SET_RAW_VBI_PARAM, 6, data);
}
