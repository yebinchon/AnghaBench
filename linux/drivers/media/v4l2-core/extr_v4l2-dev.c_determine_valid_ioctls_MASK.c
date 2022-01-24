#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct video_device {scalar_t__ vfl_type; scalar_t__ vfl_dir; int /*<<< orphan*/  valid_ioctls; scalar_t__ ctrl_handler; struct v4l2_ioctl_ops* ioctl_ops; } ;
struct v4l2_ioctl_ops {scalar_t__ vidioc_g_std; scalar_t__ vidioc_g_parm; scalar_t__ vidioc_s_std; scalar_t__ vidioc_try_fmt_sdr_out; scalar_t__ vidioc_s_fmt_sdr_out; scalar_t__ vidioc_g_fmt_sdr_out; scalar_t__ vidioc_enum_fmt_sdr_out; scalar_t__ vidioc_try_fmt_sdr_cap; scalar_t__ vidioc_s_fmt_sdr_cap; scalar_t__ vidioc_g_fmt_sdr_cap; scalar_t__ vidioc_enum_fmt_sdr_cap; scalar_t__ vidioc_try_fmt_sliced_vbi_out; scalar_t__ vidioc_try_fmt_vbi_out; scalar_t__ vidioc_try_fmt_sliced_vbi_cap; scalar_t__ vidioc_try_fmt_vbi_cap; scalar_t__ vidioc_s_fmt_sliced_vbi_out; scalar_t__ vidioc_s_fmt_vbi_out; scalar_t__ vidioc_s_fmt_sliced_vbi_cap; scalar_t__ vidioc_s_fmt_vbi_cap; scalar_t__ vidioc_g_fmt_sliced_vbi_out; scalar_t__ vidioc_g_fmt_vbi_out; scalar_t__ vidioc_g_fmt_sliced_vbi_cap; scalar_t__ vidioc_g_fmt_vbi_cap; scalar_t__ vidioc_s_selection; scalar_t__ vidioc_g_selection; scalar_t__ vidioc_try_fmt_meta_out; scalar_t__ vidioc_try_fmt_vid_out_overlay; scalar_t__ vidioc_try_fmt_vid_out_mplane; scalar_t__ vidioc_try_fmt_vid_out; scalar_t__ vidioc_try_fmt_meta_cap; scalar_t__ vidioc_try_fmt_vid_overlay; scalar_t__ vidioc_try_fmt_vid_cap_mplane; scalar_t__ vidioc_try_fmt_vid_cap; scalar_t__ vidioc_s_fmt_meta_out; scalar_t__ vidioc_s_fmt_vid_out_overlay; scalar_t__ vidioc_s_fmt_vid_out_mplane; scalar_t__ vidioc_s_fmt_vid_out; scalar_t__ vidioc_s_fmt_meta_cap; scalar_t__ vidioc_s_fmt_vid_overlay; scalar_t__ vidioc_s_fmt_vid_cap_mplane; scalar_t__ vidioc_s_fmt_vid_cap; scalar_t__ vidioc_g_fmt_meta_out; scalar_t__ vidioc_g_fmt_vid_out_overlay; scalar_t__ vidioc_g_fmt_vid_out_mplane; scalar_t__ vidioc_g_fmt_vid_out; scalar_t__ vidioc_g_fmt_meta_cap; scalar_t__ vidioc_g_fmt_vid_overlay; scalar_t__ vidioc_g_fmt_vid_cap_mplane; scalar_t__ vidioc_g_fmt_vid_cap; scalar_t__ vidioc_enum_fmt_meta_out; scalar_t__ vidioc_enum_fmt_vid_out; scalar_t__ vidioc_enum_fmt_meta_cap; scalar_t__ vidioc_enum_fmt_vid_overlay; scalar_t__ vidioc_enum_fmt_vid_cap; scalar_t__ vidioc_g_modulator; scalar_t__ vidioc_g_tuner; scalar_t__ vidioc_enum_freq_bands; scalar_t__ vidioc_querymenu; scalar_t__ vidioc_try_ext_ctrls; scalar_t__ vidioc_s_ext_ctrls; scalar_t__ vidioc_g_ext_ctrls; scalar_t__ vidioc_s_ctrl; scalar_t__ vidioc_g_ctrl; scalar_t__ vidioc_query_ext_ctrl; scalar_t__ vidioc_queryctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASE_VIDIOC_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_ioctl_ops const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VFL_DIR_RX ; 
 scalar_t__ VFL_DIR_TX ; 
 scalar_t__ VFL_TYPE_GRABBER ; 
 scalar_t__ VFL_TYPE_RADIO ; 
 scalar_t__ VFL_TYPE_SDR ; 
 scalar_t__ VFL_TYPE_TOUCH ; 
 scalar_t__ VFL_TYPE_VBI ; 
 int /*<<< orphan*/  VIDIOC_CREATE_BUFS ; 
 int /*<<< orphan*/  VIDIOC_CROPCAP ; 
 int /*<<< orphan*/  VIDIOC_DBG_G_CHIP_INFO ; 
 int /*<<< orphan*/  VIDIOC_DBG_G_REGISTER ; 
 int /*<<< orphan*/  VIDIOC_DBG_S_REGISTER ; 
 int /*<<< orphan*/  VIDIOC_DECODER_CMD ; 
 int /*<<< orphan*/  VIDIOC_DQBUF ; 
 int /*<<< orphan*/  VIDIOC_DQEVENT ; 
 int /*<<< orphan*/  VIDIOC_DV_TIMINGS_CAP ; 
 int /*<<< orphan*/  VIDIOC_ENCODER_CMD ; 
 int /*<<< orphan*/  VIDIOC_ENUMAUDIO ; 
 int /*<<< orphan*/  VIDIOC_ENUMAUDOUT ; 
 int /*<<< orphan*/  VIDIOC_ENUMINPUT ; 
 int /*<<< orphan*/  VIDIOC_ENUMOUTPUT ; 
 int /*<<< orphan*/  VIDIOC_ENUMSTD ; 
 int /*<<< orphan*/  VIDIOC_ENUM_DV_TIMINGS ; 
 int /*<<< orphan*/  VIDIOC_ENUM_FMT ; 
 int /*<<< orphan*/  VIDIOC_ENUM_FRAMEINTERVALS ; 
 int /*<<< orphan*/  VIDIOC_ENUM_FRAMESIZES ; 
 int /*<<< orphan*/  VIDIOC_ENUM_FREQ_BANDS ; 
 int /*<<< orphan*/  VIDIOC_EXPBUF ; 
 int /*<<< orphan*/  VIDIOC_G_AUDIO ; 
 int /*<<< orphan*/  VIDIOC_G_AUDOUT ; 
 int /*<<< orphan*/  VIDIOC_G_CROP ; 
 int /*<<< orphan*/  VIDIOC_G_CTRL ; 
 int /*<<< orphan*/  VIDIOC_G_DV_TIMINGS ; 
 int /*<<< orphan*/  VIDIOC_G_EDID ; 
 int /*<<< orphan*/  VIDIOC_G_ENC_INDEX ; 
 int /*<<< orphan*/  VIDIOC_G_EXT_CTRLS ; 
 int /*<<< orphan*/  VIDIOC_G_FBUF ; 
 int /*<<< orphan*/  VIDIOC_G_FMT ; 
 int /*<<< orphan*/  VIDIOC_G_FREQUENCY ; 
 int /*<<< orphan*/  VIDIOC_G_INPUT ; 
 int /*<<< orphan*/  VIDIOC_G_JPEGCOMP ; 
 int /*<<< orphan*/  VIDIOC_G_MODULATOR ; 
 int /*<<< orphan*/  VIDIOC_G_OUTPUT ; 
 int /*<<< orphan*/  VIDIOC_G_PARM ; 
 int /*<<< orphan*/  VIDIOC_G_PRIORITY ; 
 int /*<<< orphan*/  VIDIOC_G_SELECTION ; 
 int /*<<< orphan*/  VIDIOC_G_SLICED_VBI_CAP ; 
 int /*<<< orphan*/  VIDIOC_G_STD ; 
 int /*<<< orphan*/  VIDIOC_G_TUNER ; 
 int /*<<< orphan*/  VIDIOC_LOG_STATUS ; 
 int /*<<< orphan*/  VIDIOC_OVERLAY ; 
 int /*<<< orphan*/  VIDIOC_PREPARE_BUF ; 
 int /*<<< orphan*/  VIDIOC_QBUF ; 
 int /*<<< orphan*/  VIDIOC_QUERYBUF ; 
 int /*<<< orphan*/  VIDIOC_QUERYCAP ; 
 int /*<<< orphan*/  VIDIOC_QUERYCTRL ; 
 int /*<<< orphan*/  VIDIOC_QUERYMENU ; 
 int /*<<< orphan*/  VIDIOC_QUERYSTD ; 
 int /*<<< orphan*/  VIDIOC_QUERY_DV_TIMINGS ; 
 int /*<<< orphan*/  VIDIOC_QUERY_EXT_CTRL ; 
 int /*<<< orphan*/  VIDIOC_REQBUFS ; 
 int /*<<< orphan*/  VIDIOC_STREAMOFF ; 
 int /*<<< orphan*/  VIDIOC_STREAMON ; 
 int /*<<< orphan*/  VIDIOC_SUBSCRIBE_EVENT ; 
 int /*<<< orphan*/  VIDIOC_S_AUDIO ; 
 int /*<<< orphan*/  VIDIOC_S_AUDOUT ; 
 int /*<<< orphan*/  VIDIOC_S_CROP ; 
 int /*<<< orphan*/  VIDIOC_S_CTRL ; 
 int /*<<< orphan*/  VIDIOC_S_DV_TIMINGS ; 
 int /*<<< orphan*/  VIDIOC_S_EDID ; 
 int /*<<< orphan*/  VIDIOC_S_EXT_CTRLS ; 
 int /*<<< orphan*/  VIDIOC_S_FBUF ; 
 int /*<<< orphan*/  VIDIOC_S_FMT ; 
 int /*<<< orphan*/  VIDIOC_S_FREQUENCY ; 
 int /*<<< orphan*/  VIDIOC_S_HW_FREQ_SEEK ; 
 int /*<<< orphan*/  VIDIOC_S_INPUT ; 
 int /*<<< orphan*/  VIDIOC_S_JPEGCOMP ; 
 int /*<<< orphan*/  VIDIOC_S_MODULATOR ; 
 int /*<<< orphan*/  VIDIOC_S_OUTPUT ; 
 int /*<<< orphan*/  VIDIOC_S_PARM ; 
 int /*<<< orphan*/  VIDIOC_S_PRIORITY ; 
 int /*<<< orphan*/  VIDIOC_S_SELECTION ; 
 int /*<<< orphan*/  VIDIOC_S_STD ; 
 int /*<<< orphan*/  VIDIOC_S_TUNER ; 
 int /*<<< orphan*/  VIDIOC_TRY_DECODER_CMD ; 
 int /*<<< orphan*/  VIDIOC_TRY_ENCODER_CMD ; 
 int /*<<< orphan*/  VIDIOC_TRY_EXT_CTRLS ; 
 int /*<<< orphan*/  VIDIOC_TRY_FMT ; 
 int /*<<< orphan*/  VIDIOC_UNSUBSCRIBE_EVENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  valid_ioctls ; 
 int /*<<< orphan*/  vidioc_create_bufs ; 
 int /*<<< orphan*/  vidioc_decoder_cmd ; 
 int /*<<< orphan*/  vidioc_dqbuf ; 
 int /*<<< orphan*/  vidioc_dv_timings_cap ; 
 int /*<<< orphan*/  vidioc_encoder_cmd ; 
 int /*<<< orphan*/  vidioc_enum_dv_timings ; 
 int /*<<< orphan*/  vidioc_enum_frameintervals ; 
 int /*<<< orphan*/  vidioc_enum_framesizes ; 
 int /*<<< orphan*/  vidioc_enum_input ; 
 int /*<<< orphan*/  vidioc_enum_output ; 
 int /*<<< orphan*/  vidioc_enumaudio ; 
 int /*<<< orphan*/  vidioc_enumaudout ; 
 int /*<<< orphan*/  vidioc_expbuf ; 
 int /*<<< orphan*/  vidioc_g_audio ; 
 int /*<<< orphan*/  vidioc_g_audout ; 
 int /*<<< orphan*/  vidioc_g_dv_timings ; 
 int /*<<< orphan*/  vidioc_g_edid ; 
 int /*<<< orphan*/  vidioc_g_enc_index ; 
 int /*<<< orphan*/  vidioc_g_fbuf ; 
 int /*<<< orphan*/  vidioc_g_frequency ; 
 int /*<<< orphan*/  vidioc_g_input ; 
 int /*<<< orphan*/  vidioc_g_jpegcomp ; 
 int /*<<< orphan*/  vidioc_g_modulator ; 
 int /*<<< orphan*/  vidioc_g_output ; 
 int /*<<< orphan*/  vidioc_g_selection ; 
 int /*<<< orphan*/  vidioc_g_sliced_vbi_cap ; 
 int /*<<< orphan*/  vidioc_g_std ; 
 int /*<<< orphan*/  vidioc_g_tuner ; 
 int /*<<< orphan*/  vidioc_log_status ; 
 int /*<<< orphan*/  vidioc_overlay ; 
 int /*<<< orphan*/  vidioc_prepare_buf ; 
 int /*<<< orphan*/  vidioc_qbuf ; 
 int /*<<< orphan*/  vidioc_query_dv_timings ; 
 int /*<<< orphan*/  vidioc_querybuf ; 
 int /*<<< orphan*/  vidioc_querycap ; 
 int /*<<< orphan*/  vidioc_querystd ; 
 int /*<<< orphan*/  vidioc_reqbufs ; 
 int /*<<< orphan*/  vidioc_s_audio ; 
 int /*<<< orphan*/  vidioc_s_audout ; 
 int /*<<< orphan*/  vidioc_s_dv_timings ; 
 int /*<<< orphan*/  vidioc_s_edid ; 
 int /*<<< orphan*/  vidioc_s_fbuf ; 
 int /*<<< orphan*/  vidioc_s_frequency ; 
 int /*<<< orphan*/  vidioc_s_hw_freq_seek ; 
 int /*<<< orphan*/  vidioc_s_input ; 
 int /*<<< orphan*/  vidioc_s_jpegcomp ; 
 int /*<<< orphan*/  vidioc_s_modulator ; 
 int /*<<< orphan*/  vidioc_s_output ; 
 int /*<<< orphan*/  vidioc_s_parm ; 
 int /*<<< orphan*/  vidioc_s_selection ; 
 int /*<<< orphan*/  vidioc_s_std ; 
 int /*<<< orphan*/  vidioc_s_tuner ; 
 int /*<<< orphan*/  vidioc_streamoff ; 
 int /*<<< orphan*/  vidioc_streamon ; 
 int /*<<< orphan*/  vidioc_subscribe_event ; 
 int /*<<< orphan*/  vidioc_try_decoder_cmd ; 
 int /*<<< orphan*/  vidioc_try_encoder_cmd ; 
 int /*<<< orphan*/  vidioc_unsubscribe_event ; 

__attribute__((used)) static void FUNC6(struct video_device *vdev)
{
	FUNC0(valid_ioctls, BASE_VIDIOC_PRIVATE);
	const struct v4l2_ioctl_ops *ops = vdev->ioctl_ops;
	bool is_vid = vdev->vfl_type == VFL_TYPE_GRABBER;
	bool is_vbi = vdev->vfl_type == VFL_TYPE_VBI;
	bool is_radio = vdev->vfl_type == VFL_TYPE_RADIO;
	bool is_sdr = vdev->vfl_type == VFL_TYPE_SDR;
	bool is_tch = vdev->vfl_type == VFL_TYPE_TOUCH;
	bool is_rx = vdev->vfl_dir != VFL_DIR_TX;
	bool is_tx = vdev->vfl_dir != VFL_DIR_RX;

	FUNC4(valid_ioctls, BASE_VIDIOC_PRIVATE);

	/* vfl_type and vfl_dir independent ioctls */

	FUNC1(ops, VIDIOC_QUERYCAP, vidioc_querycap);
	FUNC5(FUNC2(VIDIOC_G_PRIORITY), valid_ioctls);
	FUNC5(FUNC2(VIDIOC_S_PRIORITY), valid_ioctls);

	/* Note: the control handler can also be passed through the filehandle,
	   and that can't be tested here. If the bit for these control ioctls
	   is set, then the ioctl is valid. But if it is 0, then it can still
	   be valid if the filehandle passed the control handler. */
	if (vdev->ctrl_handler || ops->vidioc_queryctrl)
		FUNC5(FUNC2(VIDIOC_QUERYCTRL), valid_ioctls);
	if (vdev->ctrl_handler || ops->vidioc_query_ext_ctrl)
		FUNC5(FUNC2(VIDIOC_QUERY_EXT_CTRL), valid_ioctls);
	if (vdev->ctrl_handler || ops->vidioc_g_ctrl || ops->vidioc_g_ext_ctrls)
		FUNC5(FUNC2(VIDIOC_G_CTRL), valid_ioctls);
	if (vdev->ctrl_handler || ops->vidioc_s_ctrl || ops->vidioc_s_ext_ctrls)
		FUNC5(FUNC2(VIDIOC_S_CTRL), valid_ioctls);
	if (vdev->ctrl_handler || ops->vidioc_g_ext_ctrls)
		FUNC5(FUNC2(VIDIOC_G_EXT_CTRLS), valid_ioctls);
	if (vdev->ctrl_handler || ops->vidioc_s_ext_ctrls)
		FUNC5(FUNC2(VIDIOC_S_EXT_CTRLS), valid_ioctls);
	if (vdev->ctrl_handler || ops->vidioc_try_ext_ctrls)
		FUNC5(FUNC2(VIDIOC_TRY_EXT_CTRLS), valid_ioctls);
	if (vdev->ctrl_handler || ops->vidioc_querymenu)
		FUNC5(FUNC2(VIDIOC_QUERYMENU), valid_ioctls);
	FUNC1(ops, VIDIOC_G_FREQUENCY, vidioc_g_frequency);
	FUNC1(ops, VIDIOC_S_FREQUENCY, vidioc_s_frequency);
	FUNC1(ops, VIDIOC_LOG_STATUS, vidioc_log_status);
#ifdef CONFIG_VIDEO_ADV_DEBUG
	set_bit(_IOC_NR(VIDIOC_DBG_G_CHIP_INFO), valid_ioctls);
	set_bit(_IOC_NR(VIDIOC_DBG_G_REGISTER), valid_ioctls);
	set_bit(_IOC_NR(VIDIOC_DBG_S_REGISTER), valid_ioctls);
#endif
	/* yes, really vidioc_subscribe_event */
	FUNC1(ops, VIDIOC_DQEVENT, vidioc_subscribe_event);
	FUNC1(ops, VIDIOC_SUBSCRIBE_EVENT, vidioc_subscribe_event);
	FUNC1(ops, VIDIOC_UNSUBSCRIBE_EVENT, vidioc_unsubscribe_event);
	if (ops->vidioc_enum_freq_bands || ops->vidioc_g_tuner || ops->vidioc_g_modulator)
		FUNC5(FUNC2(VIDIOC_ENUM_FREQ_BANDS), valid_ioctls);

	if (is_vid || is_tch) {
		/* video and metadata specific ioctls */
		if ((is_rx && (ops->vidioc_enum_fmt_vid_cap ||
			       ops->vidioc_enum_fmt_vid_overlay ||
			       ops->vidioc_enum_fmt_meta_cap)) ||
		    (is_tx && (ops->vidioc_enum_fmt_vid_out ||
			       ops->vidioc_enum_fmt_meta_out)))
			FUNC5(FUNC2(VIDIOC_ENUM_FMT), valid_ioctls);
		if ((is_rx && (ops->vidioc_g_fmt_vid_cap ||
			       ops->vidioc_g_fmt_vid_cap_mplane ||
			       ops->vidioc_g_fmt_vid_overlay ||
			       ops->vidioc_g_fmt_meta_cap)) ||
		    (is_tx && (ops->vidioc_g_fmt_vid_out ||
			       ops->vidioc_g_fmt_vid_out_mplane ||
			       ops->vidioc_g_fmt_vid_out_overlay ||
			       ops->vidioc_g_fmt_meta_out)))
			 FUNC5(FUNC2(VIDIOC_G_FMT), valid_ioctls);
		if ((is_rx && (ops->vidioc_s_fmt_vid_cap ||
			       ops->vidioc_s_fmt_vid_cap_mplane ||
			       ops->vidioc_s_fmt_vid_overlay ||
			       ops->vidioc_s_fmt_meta_cap)) ||
		    (is_tx && (ops->vidioc_s_fmt_vid_out ||
			       ops->vidioc_s_fmt_vid_out_mplane ||
			       ops->vidioc_s_fmt_vid_out_overlay ||
			       ops->vidioc_s_fmt_meta_out)))
			 FUNC5(FUNC2(VIDIOC_S_FMT), valid_ioctls);
		if ((is_rx && (ops->vidioc_try_fmt_vid_cap ||
			       ops->vidioc_try_fmt_vid_cap_mplane ||
			       ops->vidioc_try_fmt_vid_overlay ||
			       ops->vidioc_try_fmt_meta_cap)) ||
		    (is_tx && (ops->vidioc_try_fmt_vid_out ||
			       ops->vidioc_try_fmt_vid_out_mplane ||
			       ops->vidioc_try_fmt_vid_out_overlay ||
			       ops->vidioc_try_fmt_meta_out)))
			 FUNC5(FUNC2(VIDIOC_TRY_FMT), valid_ioctls);
		FUNC1(ops, VIDIOC_OVERLAY, vidioc_overlay);
		FUNC1(ops, VIDIOC_G_FBUF, vidioc_g_fbuf);
		FUNC1(ops, VIDIOC_S_FBUF, vidioc_s_fbuf);
		FUNC1(ops, VIDIOC_G_JPEGCOMP, vidioc_g_jpegcomp);
		FUNC1(ops, VIDIOC_S_JPEGCOMP, vidioc_s_jpegcomp);
		FUNC1(ops, VIDIOC_G_ENC_INDEX, vidioc_g_enc_index);
		FUNC1(ops, VIDIOC_ENCODER_CMD, vidioc_encoder_cmd);
		FUNC1(ops, VIDIOC_TRY_ENCODER_CMD, vidioc_try_encoder_cmd);
		FUNC1(ops, VIDIOC_DECODER_CMD, vidioc_decoder_cmd);
		FUNC1(ops, VIDIOC_TRY_DECODER_CMD, vidioc_try_decoder_cmd);
		FUNC1(ops, VIDIOC_ENUM_FRAMESIZES, vidioc_enum_framesizes);
		FUNC1(ops, VIDIOC_ENUM_FRAMEINTERVALS, vidioc_enum_frameintervals);
		if (ops->vidioc_g_selection) {
			FUNC5(FUNC2(VIDIOC_G_CROP), valid_ioctls);
			FUNC5(FUNC2(VIDIOC_CROPCAP), valid_ioctls);
		}
		if (ops->vidioc_s_selection)
			FUNC5(FUNC2(VIDIOC_S_CROP), valid_ioctls);
		FUNC1(ops, VIDIOC_G_SELECTION, vidioc_g_selection);
		FUNC1(ops, VIDIOC_S_SELECTION, vidioc_s_selection);
	} else if (is_vbi) {
		/* vbi specific ioctls */
		if ((is_rx && (ops->vidioc_g_fmt_vbi_cap ||
			       ops->vidioc_g_fmt_sliced_vbi_cap)) ||
		    (is_tx && (ops->vidioc_g_fmt_vbi_out ||
			       ops->vidioc_g_fmt_sliced_vbi_out)))
			FUNC5(FUNC2(VIDIOC_G_FMT), valid_ioctls);
		if ((is_rx && (ops->vidioc_s_fmt_vbi_cap ||
			       ops->vidioc_s_fmt_sliced_vbi_cap)) ||
		    (is_tx && (ops->vidioc_s_fmt_vbi_out ||
			       ops->vidioc_s_fmt_sliced_vbi_out)))
			FUNC5(FUNC2(VIDIOC_S_FMT), valid_ioctls);
		if ((is_rx && (ops->vidioc_try_fmt_vbi_cap ||
			       ops->vidioc_try_fmt_sliced_vbi_cap)) ||
		    (is_tx && (ops->vidioc_try_fmt_vbi_out ||
			       ops->vidioc_try_fmt_sliced_vbi_out)))
			FUNC5(FUNC2(VIDIOC_TRY_FMT), valid_ioctls);
		FUNC1(ops, VIDIOC_G_SLICED_VBI_CAP, vidioc_g_sliced_vbi_cap);
	} else if (is_sdr && is_rx) {
		/* SDR receiver specific ioctls */
		if (ops->vidioc_enum_fmt_sdr_cap)
			FUNC5(FUNC2(VIDIOC_ENUM_FMT), valid_ioctls);
		if (ops->vidioc_g_fmt_sdr_cap)
			FUNC5(FUNC2(VIDIOC_G_FMT), valid_ioctls);
		if (ops->vidioc_s_fmt_sdr_cap)
			FUNC5(FUNC2(VIDIOC_S_FMT), valid_ioctls);
		if (ops->vidioc_try_fmt_sdr_cap)
			FUNC5(FUNC2(VIDIOC_TRY_FMT), valid_ioctls);
	} else if (is_sdr && is_tx) {
		/* SDR transmitter specific ioctls */
		if (ops->vidioc_enum_fmt_sdr_out)
			FUNC5(FUNC2(VIDIOC_ENUM_FMT), valid_ioctls);
		if (ops->vidioc_g_fmt_sdr_out)
			FUNC5(FUNC2(VIDIOC_G_FMT), valid_ioctls);
		if (ops->vidioc_s_fmt_sdr_out)
			FUNC5(FUNC2(VIDIOC_S_FMT), valid_ioctls);
		if (ops->vidioc_try_fmt_sdr_out)
			FUNC5(FUNC2(VIDIOC_TRY_FMT), valid_ioctls);
	}

	if (is_vid || is_vbi || is_sdr || is_tch) {
		/* ioctls valid for video, metadata, vbi or sdr */
		FUNC1(ops, VIDIOC_REQBUFS, vidioc_reqbufs);
		FUNC1(ops, VIDIOC_QUERYBUF, vidioc_querybuf);
		FUNC1(ops, VIDIOC_QBUF, vidioc_qbuf);
		FUNC1(ops, VIDIOC_EXPBUF, vidioc_expbuf);
		FUNC1(ops, VIDIOC_DQBUF, vidioc_dqbuf);
		FUNC1(ops, VIDIOC_CREATE_BUFS, vidioc_create_bufs);
		FUNC1(ops, VIDIOC_PREPARE_BUF, vidioc_prepare_buf);
		FUNC1(ops, VIDIOC_STREAMON, vidioc_streamon);
		FUNC1(ops, VIDIOC_STREAMOFF, vidioc_streamoff);
	}

	if (is_vid || is_vbi || is_tch) {
		/* ioctls valid for video or vbi */
		if (ops->vidioc_s_std)
			FUNC5(FUNC2(VIDIOC_ENUMSTD), valid_ioctls);
		FUNC1(ops, VIDIOC_S_STD, vidioc_s_std);
		FUNC1(ops, VIDIOC_G_STD, vidioc_g_std);
		if (is_rx) {
			FUNC1(ops, VIDIOC_QUERYSTD, vidioc_querystd);
			FUNC1(ops, VIDIOC_ENUMINPUT, vidioc_enum_input);
			FUNC1(ops, VIDIOC_G_INPUT, vidioc_g_input);
			FUNC1(ops, VIDIOC_S_INPUT, vidioc_s_input);
			FUNC1(ops, VIDIOC_ENUMAUDIO, vidioc_enumaudio);
			FUNC1(ops, VIDIOC_G_AUDIO, vidioc_g_audio);
			FUNC1(ops, VIDIOC_S_AUDIO, vidioc_s_audio);
			FUNC1(ops, VIDIOC_QUERY_DV_TIMINGS, vidioc_query_dv_timings);
			FUNC1(ops, VIDIOC_S_EDID, vidioc_s_edid);
		}
		if (is_tx) {
			FUNC1(ops, VIDIOC_ENUMOUTPUT, vidioc_enum_output);
			FUNC1(ops, VIDIOC_G_OUTPUT, vidioc_g_output);
			FUNC1(ops, VIDIOC_S_OUTPUT, vidioc_s_output);
			FUNC1(ops, VIDIOC_ENUMAUDOUT, vidioc_enumaudout);
			FUNC1(ops, VIDIOC_G_AUDOUT, vidioc_g_audout);
			FUNC1(ops, VIDIOC_S_AUDOUT, vidioc_s_audout);
		}
		if (ops->vidioc_g_parm || (vdev->vfl_type == VFL_TYPE_GRABBER &&
					ops->vidioc_g_std))
			FUNC5(FUNC2(VIDIOC_G_PARM), valid_ioctls);
		FUNC1(ops, VIDIOC_S_PARM, vidioc_s_parm);
		FUNC1(ops, VIDIOC_S_DV_TIMINGS, vidioc_s_dv_timings);
		FUNC1(ops, VIDIOC_G_DV_TIMINGS, vidioc_g_dv_timings);
		FUNC1(ops, VIDIOC_ENUM_DV_TIMINGS, vidioc_enum_dv_timings);
		FUNC1(ops, VIDIOC_DV_TIMINGS_CAP, vidioc_dv_timings_cap);
		FUNC1(ops, VIDIOC_G_EDID, vidioc_g_edid);
	}
	if (is_tx && (is_radio || is_sdr)) {
		/* radio transmitter only ioctls */
		FUNC1(ops, VIDIOC_G_MODULATOR, vidioc_g_modulator);
		FUNC1(ops, VIDIOC_S_MODULATOR, vidioc_s_modulator);
	}
	if (is_rx) {
		/* receiver only ioctls */
		FUNC1(ops, VIDIOC_G_TUNER, vidioc_g_tuner);
		FUNC1(ops, VIDIOC_S_TUNER, vidioc_s_tuner);
		FUNC1(ops, VIDIOC_S_HW_FREQ_SEEK, vidioc_s_hw_freq_seek);
	}

	FUNC3(vdev->valid_ioctls, valid_ioctls, vdev->valid_ioctls,
			BASE_VIDIOC_PRIVATE);
}