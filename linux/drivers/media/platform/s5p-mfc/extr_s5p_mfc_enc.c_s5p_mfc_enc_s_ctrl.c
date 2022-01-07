
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_ctrl {int id; int val; } ;
struct TYPE_9__ {int rc_frame_qp; int rc_p_frame_qp; int rc_b_frame_qp; int rc_framerate; int rc_min_qp; int rc_max_qp; int level_v4l2; int profile; int tier; int max_partition_depth; int num_refs_for_p; int refreshtype; int const_intra_period_enable; int lossless_cu_enable; int wavefront_enable; int loopfilter; int hier_qp_enable; int hier_qp_type; int num_hier_layer; int* hier_qp_layer; int* hier_bit_layer; int general_pb_enable; int temporal_id_enable; int strong_intra_smooth; int intra_pu_split_disable; int tmv_prediction_disable; int max_num_merge_mv; int encoding_nostartcode_enable; int refreshperiod; int lf_beta_offset_div2; int lf_tc_offset_div2; int size_of_length_field; int prepend_sps_pps_to_idr; int level; } ;
struct TYPE_8__ {int num_partitions; int imd_4x4; int num_ref; int filter_level; int filter_sharpness; int golden_frame_ref_period; int golden_frame_sel; int rc_min_qp; int rc_max_qp; int rc_frame_qp; int rc_p_frame_qp; int profile; } ;
struct TYPE_7__ {int level_v4l2; int level; int rc_frame_qp; int rc_min_qp; int rc_max_qp; int rc_p_frame_qp; int rc_b_frame_qp; int quarter_pixel; int profile; } ;
struct TYPE_6__ {int cpb_size; int level_v4l2; int level; int loop_filter_mode; int loop_filter_alpha; int loop_filter_beta; int entropy_mode; int num_ref_pic_4p; int _8x8_transform; int rc_frame_qp; int rc_min_qp; int rc_max_qp; int rc_p_frame_qp; int rc_b_frame_qp; int rc_mb_dark; int rc_mb_smooth; int rc_mb_static; int rc_mb_activity; int vui_sar; int vui_ext_sar_width; int vui_ext_sar_height; int open_gop; int open_gop_size; int vui_sar_idc; int profile; } ;
struct TYPE_10__ {TYPE_4__ hevc; TYPE_3__ vp8; TYPE_2__ mpeg4; TYPE_1__ h264; } ;
struct s5p_mfc_enc_params {int gop_size; int slice_mode; int slice_mb; int slice_bit; int intra_refresh_mb; int pad; int pad_luma; int pad_cb; int pad_cr; int rc_frame; int rc_bitrate; int rc_reaction_coeff; int vbv_size; int mv_h_range; int mv_v_range; int seq_hdr_mode; int frame_skip_mode; int fixed_target_bit; int num_b_frame; int rc_mb; TYPE_5__ codec; } ;
struct s5p_mfc_dev {int v4l2_dev; } ;
struct s5p_mfc_ctx {int force_frame_type; struct s5p_mfc_enc_params enc_params; struct s5p_mfc_dev* dev; } ;


 int EINVAL ;
 int IS_MFCV6_PLUS (struct s5p_mfc_dev*) ;
 int S5P_FIMV_ENC_PROFILE_H264_BASELINE ;
 int S5P_FIMV_ENC_PROFILE_H264_CONSTRAINED_BASELINE ;
 int S5P_FIMV_ENC_PROFILE_H264_HIGH ;
 int S5P_FIMV_ENC_PROFILE_H264_MAIN ;
 int S5P_FIMV_ENC_PROFILE_MPEG4_ADVANCED_SIMPLE ;
 int S5P_FIMV_ENC_PROFILE_MPEG4_SIMPLE ;
 int V4L2_MPEG_MFC51_VIDEO_FORCE_FRAME_TYPE_I_FRAME ;
 int __enc_update_hevc_qp_ctrls_range (struct s5p_mfc_ctx*,int,int) ;
 struct s5p_mfc_ctx* ctrl_to_ctx (struct v4l2_ctrl*) ;
 int h264_level (int) ;
 int hevc_level (int) ;
 int mfc_err (char*) ;
 int mpeg4_level (int) ;
 int v4l2_err (int *,char*,int,int) ;
 int vui_sar_idc (int) ;

__attribute__((used)) static int s5p_mfc_enc_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct s5p_mfc_ctx *ctx = ctrl_to_ctx(ctrl);
 struct s5p_mfc_dev *dev = ctx->dev;
 struct s5p_mfc_enc_params *p = &ctx->enc_params;
 int ret = 0;

 switch (ctrl->id) {
 case 232:
  p->gop_size = ctrl->val;
  break;
 case 153:
  p->slice_mode = ctrl->val;
  break;
 case 154:
  p->slice_mb = ctrl->val;
  break;
 case 155:
  p->slice_bit = ctrl->val * 8;
  break;
 case 236:
  p->intra_refresh_mb = ctrl->val;
  break;
 case 242:
  p->pad = ctrl->val;
  break;
 case 241:
  p->pad_luma = (ctrl->val >> 16) & 0xff;
  p->pad_cb = (ctrl->val >> 8) & 0xff;
  p->pad_cr = (ctrl->val >> 0) & 0xff;
  break;
 case 234:
  p->rc_frame = ctrl->val;
  break;
 case 238:
  p->rc_bitrate = ctrl->val;
  break;
 case 239:
  p->rc_reaction_coeff = ctrl->val;
  break;
 case 249:
  ctx->force_frame_type = ctrl->val;
  break;
 case 235:
  ctx->force_frame_type =
   V4L2_MPEG_MFC51_VIDEO_FORCE_FRAME_TYPE_I_FRAME;
  break;
 case 148:
  p->vbv_size = ctrl->val;
  break;
 case 152:
  p->mv_h_range = ctrl->val;
  break;
 case 151:
  p->mv_v_range = ctrl->val;
  break;
 case 224:
  p->codec.h264.cpb_size = ctrl->val;
  break;
 case 208:
  p->seq_hdr_mode = ctrl->val;
  break;
 case 248:
  p->frame_skip_mode = ctrl->val;
  break;
 case 240:
  p->fixed_target_bit = ctrl->val;
  break;
 case 237:
  p->num_b_frame = ctrl->val;
  break;
 case 214:
  switch (ctrl->val) {
  case 132:
   p->codec.h264.profile =
     S5P_FIMV_ENC_PROFILE_H264_MAIN;
   break;
  case 133:
   p->codec.h264.profile =
     S5P_FIMV_ENC_PROFILE_H264_HIGH;
   break;
  case 135:
   p->codec.h264.profile =
    S5P_FIMV_ENC_PROFILE_H264_BASELINE;
   break;
  case 134:
   if (IS_MFCV6_PLUS(dev))
    p->codec.h264.profile =
    S5P_FIMV_ENC_PROFILE_H264_CONSTRAINED_BASELINE;
   else
    ret = -EINVAL;
   break;
  default:
   ret = -EINVAL;
  }
  break;
 case 220:
  p->codec.h264.level_v4l2 = ctrl->val;
  p->codec.h264.level = h264_level(ctrl->val);
  if (p->codec.h264.level < 0) {
   mfc_err("Level number is wrong\n");
   ret = p->codec.h264.level;
  }
  break;
 case 161:
  p->codec.mpeg4.level_v4l2 = ctrl->val;
  p->codec.mpeg4.level = mpeg4_level(ctrl->val);
  if (p->codec.mpeg4.level < 0) {
   mfc_err("Level number is wrong\n");
   ret = p->codec.mpeg4.level;
  }
  break;
 case 217:
  p->codec.h264.loop_filter_mode = ctrl->val;
  break;
 case 219:
  p->codec.h264.loop_filter_alpha = ctrl->val;
  break;
 case 218:
  p->codec.h264.loop_filter_beta = ctrl->val;
  break;
 case 223:
  p->codec.h264.entropy_mode = ctrl->val;
  break;
 case 243:
  p->codec.h264.num_ref_pic_4p = ctrl->val;
  break;
 case 226:
  p->codec.h264._8x8_transform = ctrl->val;
  break;
 case 164:
  p->rc_mb = ctrl->val;
  break;
 case 222:
  p->codec.h264.rc_frame_qp = ctrl->val;
  break;
 case 215:
  p->codec.h264.rc_min_qp = ctrl->val;
  break;
 case 216:
  p->codec.h264.rc_max_qp = ctrl->val;
  break;
 case 213:
  p->codec.h264.rc_p_frame_qp = ctrl->val;
  break;
 case 225:
  p->codec.h264.rc_b_frame_qp = ctrl->val;
  break;
 case 162:
 case 230:
  p->codec.mpeg4.rc_frame_qp = ctrl->val;
  break;
 case 159:
 case 228:
  p->codec.mpeg4.rc_min_qp = ctrl->val;
  break;
 case 160:
 case 229:
  p->codec.mpeg4.rc_max_qp = ctrl->val;
  break;
 case 157:
 case 227:
  p->codec.mpeg4.rc_p_frame_qp = ctrl->val;
  break;
 case 163:
 case 231:
  p->codec.mpeg4.rc_b_frame_qp = ctrl->val;
  break;
 case 246:
  p->codec.h264.rc_mb_dark = ctrl->val;
  break;
 case 245:
  p->codec.h264.rc_mb_smooth = ctrl->val;
  break;
 case 244:
  p->codec.h264.rc_mb_static = ctrl->val;
  break;
 case 247:
  p->codec.h264.rc_mb_activity = ctrl->val;
  break;
 case 210:
  p->codec.h264.vui_sar = ctrl->val;
  break;
 case 209:
  p->codec.h264.vui_sar_idc = vui_sar_idc(ctrl->val);
  break;
 case 211:
  p->codec.h264.vui_ext_sar_width = ctrl->val;
  break;
 case 212:
  p->codec.h264.vui_ext_sar_height = ctrl->val;
  break;
 case 233:
  p->codec.h264.open_gop = !ctrl->val;
  break;
 case 221:
  p->codec.h264.open_gop_size = ctrl->val;
  break;
 case 158:
  switch (ctrl->val) {
  case 128:
   p->codec.mpeg4.profile =
    S5P_FIMV_ENC_PROFILE_MPEG4_SIMPLE;
   break;
  case 129:
   p->codec.mpeg4.profile =
   S5P_FIMV_ENC_PROFILE_MPEG4_ADVANCED_SIMPLE;
   break;
  default:
   ret = -EINVAL;
  }
  break;
 case 156:
  p->codec.mpeg4.quarter_pixel = ctrl->val;
  break;
 case 138:
  p->codec.vp8.num_partitions = ctrl->val;
  break;
 case 142:
  p->codec.vp8.imd_4x4 = ctrl->val;
  break;
 case 137:
  p->codec.vp8.num_ref = ctrl->val;
  break;
 case 146:
  p->codec.vp8.filter_level = ctrl->val;
  break;
 case 145:
  p->codec.vp8.filter_sharpness = ctrl->val;
  break;
 case 144:
  p->codec.vp8.golden_frame_ref_period = ctrl->val;
  break;
 case 143:
  p->codec.vp8.golden_frame_sel = ctrl->val;
  break;
 case 139:
  p->codec.vp8.rc_min_qp = ctrl->val;
  break;
 case 140:
  p->codec.vp8.rc_max_qp = ctrl->val;
  break;
 case 141:
  p->codec.vp8.rc_frame_qp = ctrl->val;
  break;
 case 136:
  p->codec.vp8.rc_p_frame_qp = ctrl->val;
  break;
 case 147:
  p->codec.vp8.profile = ctrl->val;
  break;
 case 185:
  p->codec.hevc.rc_frame_qp = ctrl->val;
  break;
 case 174:
  p->codec.hevc.rc_p_frame_qp = ctrl->val;
  break;
 case 207:
  p->codec.hevc.rc_b_frame_qp = ctrl->val;
  break;
 case 205:
  p->codec.hevc.rc_framerate = ctrl->val;
  break;
 case 176:
  p->codec.hevc.rc_min_qp = ctrl->val;
  __enc_update_hevc_qp_ctrls_range(ctx, ctrl->val,
       p->codec.hevc.rc_max_qp);
  break;
 case 177:
  p->codec.hevc.rc_max_qp = ctrl->val;
  __enc_update_hevc_qp_ctrls_range(ctx, p->codec.hevc.rc_min_qp,
       ctrl->val);
  break;
 case 184:
  p->codec.hevc.level_v4l2 = ctrl->val;
  p->codec.hevc.level = hevc_level(ctrl->val);
  break;
 case 175:
  switch (ctrl->val) {
  case 131:
   p->codec.hevc.profile =
    131;
   break;
  case 130:
   p->codec.hevc.profile =
   130;
   break;
  default:
   ret = -EINVAL;
  }
  break;
 case 168:
  p->codec.hevc.tier = ctrl->val;
  break;
 case 178:
  p->codec.hevc.max_partition_depth = ctrl->val;
  break;
 case 149:
  p->codec.hevc.num_refs_for_p = ctrl->val;
  break;
 case 172:
  p->codec.hevc.refreshtype = ctrl->val;
  break;
 case 206:
  p->codec.hevc.const_intra_period_enable = ctrl->val;
  break;
 case 180:
  p->codec.hevc.lossless_cu_enable = ctrl->val;
  break;
 case 166:
  p->codec.hevc.wavefront_enable = ctrl->val;
  break;
 case 181:
  p->codec.hevc.loopfilter = ctrl->val;
  break;
 case 187:
  p->codec.hevc.hier_qp_enable = ctrl->val;
  break;
 case 188:
  p->codec.hevc.hier_qp_type = ctrl->val;
  break;
 case 189:
  p->codec.hevc.num_hier_layer = ctrl->val;
  break;
 case 202:
  p->codec.hevc.hier_qp_layer[0] = ctrl->val;
  break;
 case 200:
  p->codec.hevc.hier_qp_layer[1] = ctrl->val;
  break;
 case 198:
  p->codec.hevc.hier_qp_layer[2] = ctrl->val;
  break;
 case 196:
  p->codec.hevc.hier_qp_layer[3] = ctrl->val;
  break;
 case 194:
  p->codec.hevc.hier_qp_layer[4] = ctrl->val;
  break;
 case 192:
  p->codec.hevc.hier_qp_layer[5] = ctrl->val;
  break;
 case 190:
  p->codec.hevc.hier_qp_layer[6] = ctrl->val;
  break;
 case 203:
  p->codec.hevc.hier_bit_layer[0] = ctrl->val;
  break;
 case 201:
  p->codec.hevc.hier_bit_layer[1] = ctrl->val;
  break;
 case 199:
  p->codec.hevc.hier_bit_layer[2] = ctrl->val;
  break;
 case 197:
  p->codec.hevc.hier_bit_layer[3] = ctrl->val;
  break;
 case 195:
  p->codec.hevc.hier_bit_layer[4] = ctrl->val;
  break;
 case 193:
  p->codec.hevc.hier_bit_layer[5] = ctrl->val;
  break;
 case 191:
  p->codec.hevc.hier_bit_layer[6] = ctrl->val;
  break;
 case 204:
  p->codec.hevc.general_pb_enable = ctrl->val;
  break;
 case 169:
  p->codec.hevc.temporal_id_enable = ctrl->val;
  break;
 case 170:
  p->codec.hevc.strong_intra_smooth = ctrl->val;
  break;
 case 186:
  p->codec.hevc.intra_pu_split_disable = ctrl->val;
  break;
 case 167:
  p->codec.hevc.tmv_prediction_disable = !ctrl->val;
  break;
 case 179:
  p->codec.hevc.max_num_merge_mv = ctrl->val;
  break;
 case 165:
  p->codec.hevc.encoding_nostartcode_enable = ctrl->val;
  break;
 case 173:
  p->codec.hevc.refreshperiod = ctrl->val;
  break;
 case 183:
  p->codec.hevc.lf_beta_offset_div2 = ctrl->val;
  break;
 case 182:
  p->codec.hevc.lf_tc_offset_div2 = ctrl->val;
  break;
 case 171:
  p->codec.hevc.size_of_length_field = ctrl->val;
  break;
 case 150:
  p->codec.hevc.prepend_sps_pps_to_idr = ctrl->val;
  break;
 default:
  v4l2_err(&dev->v4l2_dev, "Invalid control, id=%d, val=%d\n",
       ctrl->id, ctrl->val);
  ret = -EINVAL;
 }
 return ret;
}
