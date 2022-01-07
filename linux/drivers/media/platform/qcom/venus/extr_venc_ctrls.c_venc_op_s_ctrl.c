
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int hevc; int h264; int mpeg4; } ;
struct TYPE_5__ {int vpx; int hevc; int h264; int mpeg4; } ;
struct venc_controls {int num_b_frames; int num_p_frames; int gop_size; int vp8_max_qp; int vp8_min_qp; int h264_i_period; int header_mode; int h264_loop_filter_mode; int h264_loop_filter_beta; int h264_loop_filter_alpha; int multi_slice_max_mb; int multi_slice_max_bytes; int multi_slice_mode; int h264_max_qp; int h264_min_qp; int h264_b_qp; int h264_p_qp; int h264_i_qp; TYPE_3__ level; TYPE_2__ profile; int h264_entropy_mode; int bitrate_peak; int bitrate; int bitrate_mode; } ;
struct TYPE_4__ {struct venc_controls enc; } ;
struct venus_inst {int lock; int streamon_cap; int streamon_out; TYPE_1__ controls; } ;
struct v4l2_ctrl {int id; int val; } ;
struct hfi_enable {int enable; int layer_id; int bitrate; } ;
struct hfi_bitrate {int enable; int layer_id; int bitrate; } ;


 int EINVAL ;
 int HFI_PROPERTY_CONFIG_VENC_REQUEST_SYNC_FRAME ;
 int HFI_PROPERTY_CONFIG_VENC_TARGET_BITRATE ;
 struct venus_inst* ctrl_to_inst (struct v4l2_ctrl*) ;
 int hfi_session_set_property (struct venus_inst*,int ,struct hfi_enable*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int venc_calc_bpframes (int ,int ,int *,int *) ;

__attribute__((used)) static int venc_op_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct venus_inst *inst = ctrl_to_inst(ctrl);
 struct venc_controls *ctr = &inst->controls.enc;
 struct hfi_enable en = { .enable = 1 };
 struct hfi_bitrate brate;
 u32 bframes;
 u32 ptype;
 int ret;

 switch (ctrl->id) {
 case 156:
  ctr->bitrate_mode = ctrl->val;
  break;
 case 157:
  ctr->bitrate = ctrl->val;
  mutex_lock(&inst->lock);
  if (inst->streamon_out && inst->streamon_cap) {
   ptype = HFI_PROPERTY_CONFIG_VENC_TARGET_BITRATE;
   brate.bitrate = ctr->bitrate;
   brate.layer_id = 0;

   ret = hfi_session_set_property(inst, ptype, &brate);
   if (ret) {
    mutex_unlock(&inst->lock);
    return ret;
   }
  }
  mutex_unlock(&inst->lock);
  break;
 case 155:
  ctr->bitrate_peak = ctrl->val;
  break;
 case 149:
  ctr->h264_entropy_mode = ctrl->val;
  break;
 case 134:
  ctr->profile.mpeg4 = ctrl->val;
  break;
 case 140:
  ctr->profile.h264 = ctrl->val;
  break;
 case 136:
  ctr->profile.hevc = ctrl->val;
  break;
 case 130:
  ctr->profile.vpx = ctrl->val;
  break;
 case 135:
  ctr->level.mpeg4 = ctrl->val;
  break;
 case 146:
  ctr->level.h264 = ctrl->val;
  break;
 case 137:
  ctr->level.hevc = ctrl->val;
  break;
 case 148:
  ctr->h264_i_qp = ctrl->val;
  break;
 case 139:
  ctr->h264_p_qp = ctrl->val;
  break;
 case 150:
  ctr->h264_b_qp = ctrl->val;
  break;
 case 141:
  ctr->h264_min_qp = ctrl->val;
  break;
 case 142:
  ctr->h264_max_qp = ctrl->val;
  break;
 case 131:
  ctr->multi_slice_mode = ctrl->val;
  break;
 case 133:
  ctr->multi_slice_max_bytes = ctrl->val;
  break;
 case 132:
  ctr->multi_slice_max_mb = ctrl->val;
  break;
 case 145:
  ctr->h264_loop_filter_alpha = ctrl->val;
  break;
 case 144:
  ctr->h264_loop_filter_beta = ctrl->val;
  break;
 case 143:
  ctr->h264_loop_filter_mode = ctrl->val;
  break;
 case 138:
  ctr->header_mode = ctrl->val;
  break;
 case 153:
  break;
 case 151:
  ret = venc_calc_bpframes(ctrl->val, ctr->num_b_frames, &bframes,
      &ctr->num_p_frames);
  if (ret)
   return ret;

  ctr->gop_size = ctrl->val;
  break;
 case 147:
  ctr->h264_i_period = ctrl->val;
  break;
 case 128:
  ctr->vp8_min_qp = ctrl->val;
  break;
 case 129:
  ctr->vp8_max_qp = ctrl->val;
  break;
 case 154:
  ret = venc_calc_bpframes(ctr->gop_size, ctrl->val, &bframes,
      &ctr->num_p_frames);
  if (ret)
   return ret;

  ctr->num_b_frames = bframes;
  break;
 case 152:
  mutex_lock(&inst->lock);
  if (inst->streamon_out && inst->streamon_cap) {
   ptype = HFI_PROPERTY_CONFIG_VENC_REQUEST_SYNC_FRAME;
   ret = hfi_session_set_property(inst, ptype, &en);

   if (ret) {
    mutex_unlock(&inst->lock);
    return ret;
   }
  }
  mutex_unlock(&inst->lock);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
