
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_sliced_vbi_data {int line; int* data; scalar_t__ field; int id; } ;
struct ivtv {int v4l2_cap; int std_out; } ;


 int IVTV_HW_SAA7127 ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int V4L2_SLICED_WSS_625 ;
 int V4L2_STD_625_50 ;
 int ivtv_call_hw (struct ivtv*,int ,int ,int ,struct v4l2_sliced_vbi_data*) ;
 int s_vbi_data ;
 int vbi ;

__attribute__((used)) static void ivtv_set_wss(struct ivtv *itv, int enabled, int mode)
{
 struct v4l2_sliced_vbi_data data;

 if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
  return;





 if ((itv->std_out & V4L2_STD_625_50) && !enabled) {
  enabled = 1;
  mode = 0x08;
 }
 data.id = V4L2_SLICED_WSS_625;
 data.field = 0;
 data.line = enabled ? 23 : 0;
 data.data[0] = mode & 0xff;
 data.data[1] = (mode >> 8) & 0xff;
 ivtv_call_hw(itv, IVTV_HW_SAA7127, vbi, s_vbi_data, &data);
}
