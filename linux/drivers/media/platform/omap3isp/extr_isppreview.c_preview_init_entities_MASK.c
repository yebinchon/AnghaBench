#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct media_entity {int /*<<< orphan*/ * ops; } ;
struct v4l2_subdev {int grp_id; struct media_entity entity; int /*<<< orphan*/ * ctrl_handler; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; int /*<<< orphan*/ * internal_ops; } ;
struct media_pad {int flags; } ;
struct TYPE_3__ {int capture_mem; int bpl_alignment; void* isp; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; } ;
struct isp_prev_device {struct v4l2_subdev subdev; TYPE_1__ video_in; TYPE_1__ video_out; int /*<<< orphan*/  ctrls; int /*<<< orphan*/  input; struct media_pad* pads; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPPRV_BRIGHT_DEF ; 
 int /*<<< orphan*/  ISPPRV_BRIGHT_HIGH ; 
 int /*<<< orphan*/  ISPPRV_BRIGHT_LOW ; 
 int /*<<< orphan*/  ISPPRV_BRIGHT_STEP ; 
 int /*<<< orphan*/  ISPPRV_CONTRAST_DEF ; 
 int /*<<< orphan*/  ISPPRV_CONTRAST_HIGH ; 
 int /*<<< orphan*/  ISPPRV_CONTRAST_LOW ; 
 int /*<<< orphan*/  ISPPRV_CONTRAST_STEP ; 
 int MEDIA_PAD_FL_MUST_CONNECT ; 
 int MEDIA_PAD_FL_SINK ; 
 int MEDIA_PAD_FL_SOURCE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PREVIEW_INPUT_NONE ; 
 int /*<<< orphan*/  PREV_PADS_NUM ; 
 size_t PREV_PAD_SINK ; 
 size_t PREV_PAD_SOURCE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC1 (struct media_entity*) ; 
 int FUNC2 (struct media_entity*,int /*<<< orphan*/ ,struct media_pad*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  preview_ctrl_ops ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  preview_media_ops ; 
 int /*<<< orphan*/  preview_v4l2_internal_ops ; 
 int /*<<< orphan*/  preview_v4l2_ops ; 
 int /*<<< orphan*/  preview_video_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC7 (struct isp_prev_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct v4l2_subdev*,struct isp_prev_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct isp_prev_device *prev)
{
	struct v4l2_subdev *sd = &prev->subdev;
	struct media_pad *pads = prev->pads;
	struct media_entity *me = &sd->entity;
	int ret;

	prev->input = PREVIEW_INPUT_NONE;

	FUNC12(sd, &preview_v4l2_ops);
	sd->internal_ops = &preview_v4l2_internal_ops;
	FUNC6(sd->name, "OMAP3 ISP preview", sizeof(sd->name));
	sd->grp_id = 1 << 16;	/* group ID for isp subdevs */
	FUNC11(sd, prev);
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	FUNC8(&prev->ctrls, 2);
	FUNC10(&prev->ctrls, &preview_ctrl_ops, V4L2_CID_BRIGHTNESS,
			  ISPPRV_BRIGHT_LOW, ISPPRV_BRIGHT_HIGH,
			  ISPPRV_BRIGHT_STEP, ISPPRV_BRIGHT_DEF);
	FUNC10(&prev->ctrls, &preview_ctrl_ops, V4L2_CID_CONTRAST,
			  ISPPRV_CONTRAST_LOW, ISPPRV_CONTRAST_HIGH,
			  ISPPRV_CONTRAST_STEP, ISPPRV_CONTRAST_DEF);
	FUNC9(&prev->ctrls);
	sd->ctrl_handler = &prev->ctrls;

	pads[PREV_PAD_SINK].flags = MEDIA_PAD_FL_SINK
				    | MEDIA_PAD_FL_MUST_CONNECT;
	pads[PREV_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;

	me->ops = &preview_media_ops;
	ret = FUNC2(me, PREV_PADS_NUM, pads);
	if (ret < 0)
		return ret;

	FUNC5(sd, NULL);

	/* According to the OMAP34xx TRM, video buffers need to be aligned on a
	 * 32 bytes boundary. However, an undocumented hardware bug requires a
	 * 64 bytes boundary at the preview engine input.
	 */
	prev->video_in.type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
	prev->video_in.ops = &preview_video_ops;
	prev->video_in.isp = FUNC7(prev);
	prev->video_in.capture_mem = FUNC0(4096 * 4096) * 2 * 3;
	prev->video_in.bpl_alignment = 64;
	prev->video_out.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	prev->video_out.ops = &preview_video_ops;
	prev->video_out.isp = FUNC7(prev);
	prev->video_out.capture_mem = FUNC0(4096 * 4096) * 2 * 3;
	prev->video_out.bpl_alignment = 32;

	ret = FUNC4(&prev->video_in, "preview");
	if (ret < 0)
		goto error_video_in;

	ret = FUNC4(&prev->video_out, "preview");
	if (ret < 0)
		goto error_video_out;

	return 0;

error_video_out:
	FUNC3(&prev->video_in);
error_video_in:
	FUNC1(&prev->subdev.entity);
	return ret;
}