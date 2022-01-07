
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_type; scalar_t__ vfl_dir; int valid_ioctls; scalar_t__ ctrl_handler; struct v4l2_ioctl_ops* ioctl_ops; } ;
struct v4l2_ioctl_ops {scalar_t__ vidioc_g_std; scalar_t__ vidioc_g_parm; scalar_t__ vidioc_s_std; scalar_t__ vidioc_try_fmt_sdr_out; scalar_t__ vidioc_s_fmt_sdr_out; scalar_t__ vidioc_g_fmt_sdr_out; scalar_t__ vidioc_enum_fmt_sdr_out; scalar_t__ vidioc_try_fmt_sdr_cap; scalar_t__ vidioc_s_fmt_sdr_cap; scalar_t__ vidioc_g_fmt_sdr_cap; scalar_t__ vidioc_enum_fmt_sdr_cap; scalar_t__ vidioc_try_fmt_sliced_vbi_out; scalar_t__ vidioc_try_fmt_vbi_out; scalar_t__ vidioc_try_fmt_sliced_vbi_cap; scalar_t__ vidioc_try_fmt_vbi_cap; scalar_t__ vidioc_s_fmt_sliced_vbi_out; scalar_t__ vidioc_s_fmt_vbi_out; scalar_t__ vidioc_s_fmt_sliced_vbi_cap; scalar_t__ vidioc_s_fmt_vbi_cap; scalar_t__ vidioc_g_fmt_sliced_vbi_out; scalar_t__ vidioc_g_fmt_vbi_out; scalar_t__ vidioc_g_fmt_sliced_vbi_cap; scalar_t__ vidioc_g_fmt_vbi_cap; scalar_t__ vidioc_s_selection; scalar_t__ vidioc_g_selection; scalar_t__ vidioc_try_fmt_meta_out; scalar_t__ vidioc_try_fmt_vid_out_overlay; scalar_t__ vidioc_try_fmt_vid_out_mplane; scalar_t__ vidioc_try_fmt_vid_out; scalar_t__ vidioc_try_fmt_meta_cap; scalar_t__ vidioc_try_fmt_vid_overlay; scalar_t__ vidioc_try_fmt_vid_cap_mplane; scalar_t__ vidioc_try_fmt_vid_cap; scalar_t__ vidioc_s_fmt_meta_out; scalar_t__ vidioc_s_fmt_vid_out_overlay; scalar_t__ vidioc_s_fmt_vid_out_mplane; scalar_t__ vidioc_s_fmt_vid_out; scalar_t__ vidioc_s_fmt_meta_cap; scalar_t__ vidioc_s_fmt_vid_overlay; scalar_t__ vidioc_s_fmt_vid_cap_mplane; scalar_t__ vidioc_s_fmt_vid_cap; scalar_t__ vidioc_g_fmt_meta_out; scalar_t__ vidioc_g_fmt_vid_out_overlay; scalar_t__ vidioc_g_fmt_vid_out_mplane; scalar_t__ vidioc_g_fmt_vid_out; scalar_t__ vidioc_g_fmt_meta_cap; scalar_t__ vidioc_g_fmt_vid_overlay; scalar_t__ vidioc_g_fmt_vid_cap_mplane; scalar_t__ vidioc_g_fmt_vid_cap; scalar_t__ vidioc_enum_fmt_meta_out; scalar_t__ vidioc_enum_fmt_vid_out; scalar_t__ vidioc_enum_fmt_meta_cap; scalar_t__ vidioc_enum_fmt_vid_overlay; scalar_t__ vidioc_enum_fmt_vid_cap; scalar_t__ vidioc_g_modulator; scalar_t__ vidioc_g_tuner; scalar_t__ vidioc_enum_freq_bands; scalar_t__ vidioc_querymenu; scalar_t__ vidioc_try_ext_ctrls; scalar_t__ vidioc_s_ext_ctrls; scalar_t__ vidioc_g_ext_ctrls; scalar_t__ vidioc_s_ctrl; scalar_t__ vidioc_g_ctrl; scalar_t__ vidioc_query_ext_ctrl; scalar_t__ vidioc_queryctrl; } ;


 int BASE_VIDIOC_PRIVATE ;
 int DECLARE_BITMAP (int ,int ) ;
 int SET_VALID_IOCTL (struct v4l2_ioctl_ops const*,int ,int ) ;
 scalar_t__ VFL_DIR_RX ;
 scalar_t__ VFL_DIR_TX ;
 scalar_t__ VFL_TYPE_GRABBER ;
 scalar_t__ VFL_TYPE_RADIO ;
 scalar_t__ VFL_TYPE_SDR ;
 scalar_t__ VFL_TYPE_TOUCH ;
 scalar_t__ VFL_TYPE_VBI ;
 int VIDIOC_CREATE_BUFS ;
 int VIDIOC_CROPCAP ;
 int VIDIOC_DBG_G_CHIP_INFO ;
 int VIDIOC_DBG_G_REGISTER ;
 int VIDIOC_DBG_S_REGISTER ;
 int VIDIOC_DECODER_CMD ;
 int VIDIOC_DQBUF ;
 int VIDIOC_DQEVENT ;
 int VIDIOC_DV_TIMINGS_CAP ;
 int VIDIOC_ENCODER_CMD ;
 int VIDIOC_ENUMAUDIO ;
 int VIDIOC_ENUMAUDOUT ;
 int VIDIOC_ENUMINPUT ;
 int VIDIOC_ENUMOUTPUT ;
 int VIDIOC_ENUMSTD ;
 int VIDIOC_ENUM_DV_TIMINGS ;
 int VIDIOC_ENUM_FMT ;
 int VIDIOC_ENUM_FRAMEINTERVALS ;
 int VIDIOC_ENUM_FRAMESIZES ;
 int VIDIOC_ENUM_FREQ_BANDS ;
 int VIDIOC_EXPBUF ;
 int VIDIOC_G_AUDIO ;
 int VIDIOC_G_AUDOUT ;
 int VIDIOC_G_CROP ;
 int VIDIOC_G_CTRL ;
 int VIDIOC_G_DV_TIMINGS ;
 int VIDIOC_G_EDID ;
 int VIDIOC_G_ENC_INDEX ;
 int VIDIOC_G_EXT_CTRLS ;
 int VIDIOC_G_FBUF ;
 int VIDIOC_G_FMT ;
 int VIDIOC_G_FREQUENCY ;
 int VIDIOC_G_INPUT ;
 int VIDIOC_G_JPEGCOMP ;
 int VIDIOC_G_MODULATOR ;
 int VIDIOC_G_OUTPUT ;
 int VIDIOC_G_PARM ;
 int VIDIOC_G_PRIORITY ;
 int VIDIOC_G_SELECTION ;
 int VIDIOC_G_SLICED_VBI_CAP ;
 int VIDIOC_G_STD ;
 int VIDIOC_G_TUNER ;
 int VIDIOC_LOG_STATUS ;
 int VIDIOC_OVERLAY ;
 int VIDIOC_PREPARE_BUF ;
 int VIDIOC_QBUF ;
 int VIDIOC_QUERYBUF ;
 int VIDIOC_QUERYCAP ;
 int VIDIOC_QUERYCTRL ;
 int VIDIOC_QUERYMENU ;
 int VIDIOC_QUERYSTD ;
 int VIDIOC_QUERY_DV_TIMINGS ;
 int VIDIOC_QUERY_EXT_CTRL ;
 int VIDIOC_REQBUFS ;
 int VIDIOC_STREAMOFF ;
 int VIDIOC_STREAMON ;
 int VIDIOC_SUBSCRIBE_EVENT ;
 int VIDIOC_S_AUDIO ;
 int VIDIOC_S_AUDOUT ;
 int VIDIOC_S_CROP ;
 int VIDIOC_S_CTRL ;
 int VIDIOC_S_DV_TIMINGS ;
 int VIDIOC_S_EDID ;
 int VIDIOC_S_EXT_CTRLS ;
 int VIDIOC_S_FBUF ;
 int VIDIOC_S_FMT ;
 int VIDIOC_S_FREQUENCY ;
 int VIDIOC_S_HW_FREQ_SEEK ;
 int VIDIOC_S_INPUT ;
 int VIDIOC_S_JPEGCOMP ;
 int VIDIOC_S_MODULATOR ;
 int VIDIOC_S_OUTPUT ;
 int VIDIOC_S_PARM ;
 int VIDIOC_S_PRIORITY ;
 int VIDIOC_S_SELECTION ;
 int VIDIOC_S_STD ;
 int VIDIOC_S_TUNER ;
 int VIDIOC_TRY_DECODER_CMD ;
 int VIDIOC_TRY_ENCODER_CMD ;
 int VIDIOC_TRY_EXT_CTRLS ;
 int VIDIOC_TRY_FMT ;
 int VIDIOC_UNSUBSCRIBE_EVENT ;
 int _IOC_NR (int ) ;
 int bitmap_andnot (int ,int ,int ,int ) ;
 int bitmap_zero (int ,int ) ;
 int set_bit (int ,int ) ;
 int valid_ioctls ;
 int vidioc_create_bufs ;
 int vidioc_decoder_cmd ;
 int vidioc_dqbuf ;
 int vidioc_dv_timings_cap ;
 int vidioc_encoder_cmd ;
 int vidioc_enum_dv_timings ;
 int vidioc_enum_frameintervals ;
 int vidioc_enum_framesizes ;
 int vidioc_enum_input ;
 int vidioc_enum_output ;
 int vidioc_enumaudio ;
 int vidioc_enumaudout ;
 int vidioc_expbuf ;
 int vidioc_g_audio ;
 int vidioc_g_audout ;
 int vidioc_g_dv_timings ;
 int vidioc_g_edid ;
 int vidioc_g_enc_index ;
 int vidioc_g_fbuf ;
 int vidioc_g_frequency ;
 int vidioc_g_input ;
 int vidioc_g_jpegcomp ;
 int vidioc_g_modulator ;
 int vidioc_g_output ;
 int vidioc_g_selection ;
 int vidioc_g_sliced_vbi_cap ;
 int vidioc_g_std ;
 int vidioc_g_tuner ;
 int vidioc_log_status ;
 int vidioc_overlay ;
 int vidioc_prepare_buf ;
 int vidioc_qbuf ;
 int vidioc_query_dv_timings ;
 int vidioc_querybuf ;
 int vidioc_querycap ;
 int vidioc_querystd ;
 int vidioc_reqbufs ;
 int vidioc_s_audio ;
 int vidioc_s_audout ;
 int vidioc_s_dv_timings ;
 int vidioc_s_edid ;
 int vidioc_s_fbuf ;
 int vidioc_s_frequency ;
 int vidioc_s_hw_freq_seek ;
 int vidioc_s_input ;
 int vidioc_s_jpegcomp ;
 int vidioc_s_modulator ;
 int vidioc_s_output ;
 int vidioc_s_parm ;
 int vidioc_s_selection ;
 int vidioc_s_std ;
 int vidioc_s_tuner ;
 int vidioc_streamoff ;
 int vidioc_streamon ;
 int vidioc_subscribe_event ;
 int vidioc_try_decoder_cmd ;
 int vidioc_try_encoder_cmd ;
 int vidioc_unsubscribe_event ;

__attribute__((used)) static void determine_valid_ioctls(struct video_device *vdev)
{
 DECLARE_BITMAP(valid_ioctls, BASE_VIDIOC_PRIVATE);
 const struct v4l2_ioctl_ops *ops = vdev->ioctl_ops;
 bool is_vid = vdev->vfl_type == VFL_TYPE_GRABBER;
 bool is_vbi = vdev->vfl_type == VFL_TYPE_VBI;
 bool is_radio = vdev->vfl_type == VFL_TYPE_RADIO;
 bool is_sdr = vdev->vfl_type == VFL_TYPE_SDR;
 bool is_tch = vdev->vfl_type == VFL_TYPE_TOUCH;
 bool is_rx = vdev->vfl_dir != VFL_DIR_TX;
 bool is_tx = vdev->vfl_dir != VFL_DIR_RX;

 bitmap_zero(valid_ioctls, BASE_VIDIOC_PRIVATE);



 SET_VALID_IOCTL(ops, VIDIOC_QUERYCAP, vidioc_querycap);
 set_bit(_IOC_NR(VIDIOC_G_PRIORITY), valid_ioctls);
 set_bit(_IOC_NR(VIDIOC_S_PRIORITY), valid_ioctls);





 if (vdev->ctrl_handler || ops->vidioc_queryctrl)
  set_bit(_IOC_NR(VIDIOC_QUERYCTRL), valid_ioctls);
 if (vdev->ctrl_handler || ops->vidioc_query_ext_ctrl)
  set_bit(_IOC_NR(VIDIOC_QUERY_EXT_CTRL), valid_ioctls);
 if (vdev->ctrl_handler || ops->vidioc_g_ctrl || ops->vidioc_g_ext_ctrls)
  set_bit(_IOC_NR(VIDIOC_G_CTRL), valid_ioctls);
 if (vdev->ctrl_handler || ops->vidioc_s_ctrl || ops->vidioc_s_ext_ctrls)
  set_bit(_IOC_NR(VIDIOC_S_CTRL), valid_ioctls);
 if (vdev->ctrl_handler || ops->vidioc_g_ext_ctrls)
  set_bit(_IOC_NR(VIDIOC_G_EXT_CTRLS), valid_ioctls);
 if (vdev->ctrl_handler || ops->vidioc_s_ext_ctrls)
  set_bit(_IOC_NR(VIDIOC_S_EXT_CTRLS), valid_ioctls);
 if (vdev->ctrl_handler || ops->vidioc_try_ext_ctrls)
  set_bit(_IOC_NR(VIDIOC_TRY_EXT_CTRLS), valid_ioctls);
 if (vdev->ctrl_handler || ops->vidioc_querymenu)
  set_bit(_IOC_NR(VIDIOC_QUERYMENU), valid_ioctls);
 SET_VALID_IOCTL(ops, VIDIOC_G_FREQUENCY, vidioc_g_frequency);
 SET_VALID_IOCTL(ops, VIDIOC_S_FREQUENCY, vidioc_s_frequency);
 SET_VALID_IOCTL(ops, VIDIOC_LOG_STATUS, vidioc_log_status);






 SET_VALID_IOCTL(ops, VIDIOC_DQEVENT, vidioc_subscribe_event);
 SET_VALID_IOCTL(ops, VIDIOC_SUBSCRIBE_EVENT, vidioc_subscribe_event);
 SET_VALID_IOCTL(ops, VIDIOC_UNSUBSCRIBE_EVENT, vidioc_unsubscribe_event);
 if (ops->vidioc_enum_freq_bands || ops->vidioc_g_tuner || ops->vidioc_g_modulator)
  set_bit(_IOC_NR(VIDIOC_ENUM_FREQ_BANDS), valid_ioctls);

 if (is_vid || is_tch) {

  if ((is_rx && (ops->vidioc_enum_fmt_vid_cap ||
          ops->vidioc_enum_fmt_vid_overlay ||
          ops->vidioc_enum_fmt_meta_cap)) ||
      (is_tx && (ops->vidioc_enum_fmt_vid_out ||
          ops->vidioc_enum_fmt_meta_out)))
   set_bit(_IOC_NR(VIDIOC_ENUM_FMT), valid_ioctls);
  if ((is_rx && (ops->vidioc_g_fmt_vid_cap ||
          ops->vidioc_g_fmt_vid_cap_mplane ||
          ops->vidioc_g_fmt_vid_overlay ||
          ops->vidioc_g_fmt_meta_cap)) ||
      (is_tx && (ops->vidioc_g_fmt_vid_out ||
          ops->vidioc_g_fmt_vid_out_mplane ||
          ops->vidioc_g_fmt_vid_out_overlay ||
          ops->vidioc_g_fmt_meta_out)))
    set_bit(_IOC_NR(VIDIOC_G_FMT), valid_ioctls);
  if ((is_rx && (ops->vidioc_s_fmt_vid_cap ||
          ops->vidioc_s_fmt_vid_cap_mplane ||
          ops->vidioc_s_fmt_vid_overlay ||
          ops->vidioc_s_fmt_meta_cap)) ||
      (is_tx && (ops->vidioc_s_fmt_vid_out ||
          ops->vidioc_s_fmt_vid_out_mplane ||
          ops->vidioc_s_fmt_vid_out_overlay ||
          ops->vidioc_s_fmt_meta_out)))
    set_bit(_IOC_NR(VIDIOC_S_FMT), valid_ioctls);
  if ((is_rx && (ops->vidioc_try_fmt_vid_cap ||
          ops->vidioc_try_fmt_vid_cap_mplane ||
          ops->vidioc_try_fmt_vid_overlay ||
          ops->vidioc_try_fmt_meta_cap)) ||
      (is_tx && (ops->vidioc_try_fmt_vid_out ||
          ops->vidioc_try_fmt_vid_out_mplane ||
          ops->vidioc_try_fmt_vid_out_overlay ||
          ops->vidioc_try_fmt_meta_out)))
    set_bit(_IOC_NR(VIDIOC_TRY_FMT), valid_ioctls);
  SET_VALID_IOCTL(ops, VIDIOC_OVERLAY, vidioc_overlay);
  SET_VALID_IOCTL(ops, VIDIOC_G_FBUF, vidioc_g_fbuf);
  SET_VALID_IOCTL(ops, VIDIOC_S_FBUF, vidioc_s_fbuf);
  SET_VALID_IOCTL(ops, VIDIOC_G_JPEGCOMP, vidioc_g_jpegcomp);
  SET_VALID_IOCTL(ops, VIDIOC_S_JPEGCOMP, vidioc_s_jpegcomp);
  SET_VALID_IOCTL(ops, VIDIOC_G_ENC_INDEX, vidioc_g_enc_index);
  SET_VALID_IOCTL(ops, VIDIOC_ENCODER_CMD, vidioc_encoder_cmd);
  SET_VALID_IOCTL(ops, VIDIOC_TRY_ENCODER_CMD, vidioc_try_encoder_cmd);
  SET_VALID_IOCTL(ops, VIDIOC_DECODER_CMD, vidioc_decoder_cmd);
  SET_VALID_IOCTL(ops, VIDIOC_TRY_DECODER_CMD, vidioc_try_decoder_cmd);
  SET_VALID_IOCTL(ops, VIDIOC_ENUM_FRAMESIZES, vidioc_enum_framesizes);
  SET_VALID_IOCTL(ops, VIDIOC_ENUM_FRAMEINTERVALS, vidioc_enum_frameintervals);
  if (ops->vidioc_g_selection) {
   set_bit(_IOC_NR(VIDIOC_G_CROP), valid_ioctls);
   set_bit(_IOC_NR(VIDIOC_CROPCAP), valid_ioctls);
  }
  if (ops->vidioc_s_selection)
   set_bit(_IOC_NR(VIDIOC_S_CROP), valid_ioctls);
  SET_VALID_IOCTL(ops, VIDIOC_G_SELECTION, vidioc_g_selection);
  SET_VALID_IOCTL(ops, VIDIOC_S_SELECTION, vidioc_s_selection);
 } else if (is_vbi) {

  if ((is_rx && (ops->vidioc_g_fmt_vbi_cap ||
          ops->vidioc_g_fmt_sliced_vbi_cap)) ||
      (is_tx && (ops->vidioc_g_fmt_vbi_out ||
          ops->vidioc_g_fmt_sliced_vbi_out)))
   set_bit(_IOC_NR(VIDIOC_G_FMT), valid_ioctls);
  if ((is_rx && (ops->vidioc_s_fmt_vbi_cap ||
          ops->vidioc_s_fmt_sliced_vbi_cap)) ||
      (is_tx && (ops->vidioc_s_fmt_vbi_out ||
          ops->vidioc_s_fmt_sliced_vbi_out)))
   set_bit(_IOC_NR(VIDIOC_S_FMT), valid_ioctls);
  if ((is_rx && (ops->vidioc_try_fmt_vbi_cap ||
          ops->vidioc_try_fmt_sliced_vbi_cap)) ||
      (is_tx && (ops->vidioc_try_fmt_vbi_out ||
          ops->vidioc_try_fmt_sliced_vbi_out)))
   set_bit(_IOC_NR(VIDIOC_TRY_FMT), valid_ioctls);
  SET_VALID_IOCTL(ops, VIDIOC_G_SLICED_VBI_CAP, vidioc_g_sliced_vbi_cap);
 } else if (is_sdr && is_rx) {

  if (ops->vidioc_enum_fmt_sdr_cap)
   set_bit(_IOC_NR(VIDIOC_ENUM_FMT), valid_ioctls);
  if (ops->vidioc_g_fmt_sdr_cap)
   set_bit(_IOC_NR(VIDIOC_G_FMT), valid_ioctls);
  if (ops->vidioc_s_fmt_sdr_cap)
   set_bit(_IOC_NR(VIDIOC_S_FMT), valid_ioctls);
  if (ops->vidioc_try_fmt_sdr_cap)
   set_bit(_IOC_NR(VIDIOC_TRY_FMT), valid_ioctls);
 } else if (is_sdr && is_tx) {

  if (ops->vidioc_enum_fmt_sdr_out)
   set_bit(_IOC_NR(VIDIOC_ENUM_FMT), valid_ioctls);
  if (ops->vidioc_g_fmt_sdr_out)
   set_bit(_IOC_NR(VIDIOC_G_FMT), valid_ioctls);
  if (ops->vidioc_s_fmt_sdr_out)
   set_bit(_IOC_NR(VIDIOC_S_FMT), valid_ioctls);
  if (ops->vidioc_try_fmt_sdr_out)
   set_bit(_IOC_NR(VIDIOC_TRY_FMT), valid_ioctls);
 }

 if (is_vid || is_vbi || is_sdr || is_tch) {

  SET_VALID_IOCTL(ops, VIDIOC_REQBUFS, vidioc_reqbufs);
  SET_VALID_IOCTL(ops, VIDIOC_QUERYBUF, vidioc_querybuf);
  SET_VALID_IOCTL(ops, VIDIOC_QBUF, vidioc_qbuf);
  SET_VALID_IOCTL(ops, VIDIOC_EXPBUF, vidioc_expbuf);
  SET_VALID_IOCTL(ops, VIDIOC_DQBUF, vidioc_dqbuf);
  SET_VALID_IOCTL(ops, VIDIOC_CREATE_BUFS, vidioc_create_bufs);
  SET_VALID_IOCTL(ops, VIDIOC_PREPARE_BUF, vidioc_prepare_buf);
  SET_VALID_IOCTL(ops, VIDIOC_STREAMON, vidioc_streamon);
  SET_VALID_IOCTL(ops, VIDIOC_STREAMOFF, vidioc_streamoff);
 }

 if (is_vid || is_vbi || is_tch) {

  if (ops->vidioc_s_std)
   set_bit(_IOC_NR(VIDIOC_ENUMSTD), valid_ioctls);
  SET_VALID_IOCTL(ops, VIDIOC_S_STD, vidioc_s_std);
  SET_VALID_IOCTL(ops, VIDIOC_G_STD, vidioc_g_std);
  if (is_rx) {
   SET_VALID_IOCTL(ops, VIDIOC_QUERYSTD, vidioc_querystd);
   SET_VALID_IOCTL(ops, VIDIOC_ENUMINPUT, vidioc_enum_input);
   SET_VALID_IOCTL(ops, VIDIOC_G_INPUT, vidioc_g_input);
   SET_VALID_IOCTL(ops, VIDIOC_S_INPUT, vidioc_s_input);
   SET_VALID_IOCTL(ops, VIDIOC_ENUMAUDIO, vidioc_enumaudio);
   SET_VALID_IOCTL(ops, VIDIOC_G_AUDIO, vidioc_g_audio);
   SET_VALID_IOCTL(ops, VIDIOC_S_AUDIO, vidioc_s_audio);
   SET_VALID_IOCTL(ops, VIDIOC_QUERY_DV_TIMINGS, vidioc_query_dv_timings);
   SET_VALID_IOCTL(ops, VIDIOC_S_EDID, vidioc_s_edid);
  }
  if (is_tx) {
   SET_VALID_IOCTL(ops, VIDIOC_ENUMOUTPUT, vidioc_enum_output);
   SET_VALID_IOCTL(ops, VIDIOC_G_OUTPUT, vidioc_g_output);
   SET_VALID_IOCTL(ops, VIDIOC_S_OUTPUT, vidioc_s_output);
   SET_VALID_IOCTL(ops, VIDIOC_ENUMAUDOUT, vidioc_enumaudout);
   SET_VALID_IOCTL(ops, VIDIOC_G_AUDOUT, vidioc_g_audout);
   SET_VALID_IOCTL(ops, VIDIOC_S_AUDOUT, vidioc_s_audout);
  }
  if (ops->vidioc_g_parm || (vdev->vfl_type == VFL_TYPE_GRABBER &&
     ops->vidioc_g_std))
   set_bit(_IOC_NR(VIDIOC_G_PARM), valid_ioctls);
  SET_VALID_IOCTL(ops, VIDIOC_S_PARM, vidioc_s_parm);
  SET_VALID_IOCTL(ops, VIDIOC_S_DV_TIMINGS, vidioc_s_dv_timings);
  SET_VALID_IOCTL(ops, VIDIOC_G_DV_TIMINGS, vidioc_g_dv_timings);
  SET_VALID_IOCTL(ops, VIDIOC_ENUM_DV_TIMINGS, vidioc_enum_dv_timings);
  SET_VALID_IOCTL(ops, VIDIOC_DV_TIMINGS_CAP, vidioc_dv_timings_cap);
  SET_VALID_IOCTL(ops, VIDIOC_G_EDID, vidioc_g_edid);
 }
 if (is_tx && (is_radio || is_sdr)) {

  SET_VALID_IOCTL(ops, VIDIOC_G_MODULATOR, vidioc_g_modulator);
  SET_VALID_IOCTL(ops, VIDIOC_S_MODULATOR, vidioc_s_modulator);
 }
 if (is_rx) {

  SET_VALID_IOCTL(ops, VIDIOC_G_TUNER, vidioc_g_tuner);
  SET_VALID_IOCTL(ops, VIDIOC_S_TUNER, vidioc_s_tuner);
  SET_VALID_IOCTL(ops, VIDIOC_S_HW_FREQ_SEEK, vidioc_s_hw_freq_seek);
 }

 bitmap_andnot(vdev->valid_ioctls, valid_ioctls, vdev->valid_ioctls,
   BASE_VIDIOC_PRIVATE);
}
