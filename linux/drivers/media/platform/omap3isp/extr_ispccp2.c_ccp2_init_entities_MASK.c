#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct media_entity {int /*<<< orphan*/ * ops; } ;
struct v4l2_subdev {int grp_id; struct media_entity entity; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; int /*<<< orphan*/ * internal_ops; } ;
struct media_pad {int flags; } ;
struct TYPE_2__ {int bpl_alignment; int bpl_max; int capture_mem; int /*<<< orphan*/ * ops; int /*<<< orphan*/  isp; int /*<<< orphan*/  type; } ;
struct isp_ccp2_device {struct v4l2_subdev subdev; TYPE_1__ video_in; int /*<<< orphan*/  output; int /*<<< orphan*/  input; struct media_pad* pads; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCP2_INPUT_NONE ; 
 int /*<<< orphan*/  CCP2_OUTPUT_NONE ; 
 int /*<<< orphan*/  CCP2_PADS_NUM ; 
 size_t CCP2_PAD_SINK ; 
 size_t CCP2_PAD_SOURCE ; 
 int MEDIA_PAD_FL_MUST_CONNECT ; 
 int MEDIA_PAD_FL_SINK ; 
 int MEDIA_PAD_FL_SOURCE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ccp2_media_ops ; 
 int /*<<< orphan*/  ccp2_sd_internal_ops ; 
 int /*<<< orphan*/  ccp2_sd_ops ; 
 int /*<<< orphan*/  ccp2_video_ops ; 
 int /*<<< orphan*/  FUNC2 (struct media_entity*) ; 
 int FUNC3 (struct media_entity*,int /*<<< orphan*/ ,struct media_pad*) ; 
 int FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_ccp2_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,struct isp_ccp2_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct isp_ccp2_device *ccp2)
{
	struct v4l2_subdev *sd = &ccp2->subdev;
	struct media_pad *pads = ccp2->pads;
	struct media_entity *me = &sd->entity;
	int ret;

	ccp2->input = CCP2_INPUT_NONE;
	ccp2->output = CCP2_OUTPUT_NONE;

	FUNC8(sd, &ccp2_sd_ops);
	sd->internal_ops = &ccp2_sd_internal_ops;
	FUNC5(sd->name, "OMAP3 ISP CCP2", sizeof(sd->name));
	sd->grp_id = 1 << 16;   /* group ID for isp subdevs */
	FUNC7(sd, ccp2);
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	pads[CCP2_PAD_SINK].flags = MEDIA_PAD_FL_SINK
				    | MEDIA_PAD_FL_MUST_CONNECT;
	pads[CCP2_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;

	me->ops = &ccp2_media_ops;
	ret = FUNC3(me, CCP2_PADS_NUM, pads);
	if (ret < 0)
		return ret;

	FUNC1(sd, NULL);

	/*
	 * The CCP2 has weird line alignment requirements, possibly caused by
	 * DPCM8 decompression. Line length for data read from memory must be a
	 * multiple of 128 bits (16 bytes) in continuous mode (when no padding
	 * is present at end of lines). Additionally, if padding is used, the
	 * padded line length must be a multiple of 32 bytes. To simplify the
	 * implementation we use a fixed 32 bytes alignment regardless of the
	 * input format and width. If strict 128 bits alignment support is
	 * required ispvideo will need to be made aware of this special dual
	 * alignment requirements.
	 */
	ccp2->video_in.type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
	ccp2->video_in.bpl_alignment = 32;
	ccp2->video_in.bpl_max = 0xffffffe0;
	ccp2->video_in.isp = FUNC6(ccp2);
	ccp2->video_in.ops = &ccp2_video_ops;
	ccp2->video_in.capture_mem = FUNC0(4096 * 4096) * 3;

	ret = FUNC4(&ccp2->video_in, "CCP2");
	if (ret < 0)
		goto error;

	return 0;

error:
	FUNC2(&ccp2->subdev.entity);
	return ret;
}