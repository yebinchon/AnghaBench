
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_sliced_vbi_data {int line; int * data; scalar_t__ field; int id; } ;
struct TYPE_3__ {int * data; } ;
struct TYPE_4__ {TYPE_1__ vps_payload; } ;
struct ivtv {int v4l2_cap; TYPE_2__ vbi; } ;


 int IVTV_HW_SAA7127 ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int V4L2_SLICED_VPS ;
 int ivtv_call_hw (struct ivtv*,int ,int ,int ,struct v4l2_sliced_vbi_data*) ;
 int s_vbi_data ;
 int vbi ;

__attribute__((used)) static void ivtv_set_vps(struct ivtv *itv, int enabled)
{
 struct v4l2_sliced_vbi_data data;

 if (!(itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT))
  return;
 data.id = V4L2_SLICED_VPS;
 data.field = 0;
 data.line = enabled ? 16 : 0;
 data.data[2] = itv->vbi.vps_payload.data[0];
 data.data[8] = itv->vbi.vps_payload.data[1];
 data.data[9] = itv->vbi.vps_payload.data[2];
 data.data[10] = itv->vbi.vps_payload.data[3];
 data.data[11] = itv->vbi.vps_payload.data[4];
 ivtv_call_hw(itv, IVTV_HW_SAA7127, vbi, s_vbi_data, &data);
}
