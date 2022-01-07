
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbi_info {int wss_missing_cnt; int cc_missing_cnt; int wss_payload; scalar_t__ cc_payload_idx; struct vbi_cc* cc_payload; } ;
struct vbi_cc {int* odd; int* even; } ;
struct v4l2_sliced_vbi_data {int field; int* data; int id; } ;
struct ivtv {scalar_t__ output_mode; int i_flags; int sd_video; scalar_t__ is_50hz; struct vbi_info vbi; } ;


 int IVTV_F_I_UPDATE_CC ;
 int IVTV_F_I_UPDATE_VPS ;
 int IVTV_F_I_UPDATE_WSS ;
 scalar_t__ OUT_PASSTHROUGH ;
 int V4L2_SLICED_CAPTION_525 ;
 int V4L2_SLICED_WSS_625 ;
 int clear_bit (int ,int *) ;
 int g_vbi_data ;
 int ivtv_set_cc (struct ivtv*,int,struct vbi_cc*) ;
 int ivtv_set_vps (struct ivtv*,int) ;
 int ivtv_set_wss (struct ivtv*,int,int) ;
 int memmove (struct vbi_cc*,struct vbi_cc*,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ v4l2_subdev_call (int ,int ,int ,struct v4l2_sliced_vbi_data*) ;
 int vbi ;

void ivtv_vbi_work_handler(struct ivtv *itv)
{
 struct vbi_info *vi = &itv->vbi;
 struct v4l2_sliced_vbi_data data;
 struct vbi_cc cc = { .odd = { 0x80, 0x80 }, .even = { 0x80, 0x80 } };


 if (itv->output_mode == OUT_PASSTHROUGH) {
  if (itv->is_50hz) {
   data.id = V4L2_SLICED_WSS_625;
   data.field = 0;

   if (v4l2_subdev_call(itv->sd_video, vbi, g_vbi_data, &data) == 0) {
    ivtv_set_wss(itv, 1, data.data[0] & 0xf);
    vi->wss_missing_cnt = 0;
   } else if (vi->wss_missing_cnt == 4) {
    ivtv_set_wss(itv, 1, 0x8);
   } else {
    vi->wss_missing_cnt++;
   }
  }
  else {
   int mode = 0;

   data.id = V4L2_SLICED_CAPTION_525;
   data.field = 0;
   if (v4l2_subdev_call(itv->sd_video, vbi, g_vbi_data, &data) == 0) {
    mode |= 1;
    cc.odd[0] = data.data[0];
    cc.odd[1] = data.data[1];
   }
   data.field = 1;
   if (v4l2_subdev_call(itv->sd_video, vbi, g_vbi_data, &data) == 0) {
    mode |= 2;
    cc.even[0] = data.data[0];
    cc.even[1] = data.data[1];
   }
   if (mode) {
    vi->cc_missing_cnt = 0;
    ivtv_set_cc(itv, mode, &cc);
   } else if (vi->cc_missing_cnt == 4) {
    ivtv_set_cc(itv, 0, &cc);
   } else {
    vi->cc_missing_cnt++;
   }
  }
  return;
 }

 if (test_and_clear_bit(IVTV_F_I_UPDATE_WSS, &itv->i_flags)) {
  ivtv_set_wss(itv, 1, vi->wss_payload & 0xf);
 }

 if (test_bit(IVTV_F_I_UPDATE_CC, &itv->i_flags)) {
  if (vi->cc_payload_idx == 0) {
   clear_bit(IVTV_F_I_UPDATE_CC, &itv->i_flags);
   ivtv_set_cc(itv, 3, &cc);
  }
  while (vi->cc_payload_idx) {
   cc = vi->cc_payload[0];

   memmove(vi->cc_payload, vi->cc_payload + 1,
     sizeof(vi->cc_payload) - sizeof(vi->cc_payload[0]));
   vi->cc_payload_idx--;
   if (vi->cc_payload_idx && cc.odd[0] == 0x80 && cc.odd[1] == 0x80)
    continue;

   ivtv_set_cc(itv, 3, &cc);
   break;
  }
 }

 if (test_and_clear_bit(IVTV_F_I_UPDATE_VPS, &itv->i_flags)) {
  ivtv_set_vps(itv, 1);
 }
}
