#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct media_entity {int /*<<< orphan*/ * ops; } ;
struct v4l2_subdev {int grp_id; struct media_entity entity; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; int /*<<< orphan*/ * internal_ops; } ;
struct media_pad {int flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {TYPE_1__ entity; } ;
struct TYPE_7__ {int capture_mem; int bpl_alignment; TYPE_2__ video; void* isp; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; } ;
struct isp_res_device {struct v4l2_subdev subdev; TYPE_3__ video_in; TYPE_3__ video_out; int /*<<< orphan*/  input; struct media_pad* pads; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEDIA_ENT_FL_DEFAULT ; 
 int MEDIA_PAD_FL_MUST_CONNECT ; 
 int MEDIA_PAD_FL_SINK ; 
 int MEDIA_PAD_FL_SOURCE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  RESIZER_INPUT_NONE ; 
 int /*<<< orphan*/  RESZ_PADS_NUM ; 
 size_t RESZ_PAD_SINK ; 
 size_t RESZ_PAD_SOURCE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC1 (struct media_entity*) ; 
 int FUNC2 (struct media_entity*,int /*<<< orphan*/ ,struct media_pad*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resizer_media_ops ; 
 int /*<<< orphan*/  resizer_v4l2_internal_ops ; 
 int /*<<< orphan*/  resizer_v4l2_ops ; 
 int /*<<< orphan*/  resizer_video_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC7 (struct isp_res_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,struct isp_res_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct isp_res_device *res)
{
	struct v4l2_subdev *sd = &res->subdev;
	struct media_pad *pads = res->pads;
	struct media_entity *me = &sd->entity;
	int ret;

	res->input = RESIZER_INPUT_NONE;

	FUNC9(sd, &resizer_v4l2_ops);
	sd->internal_ops = &resizer_v4l2_internal_ops;
	FUNC6(sd->name, "OMAP3 ISP resizer", sizeof(sd->name));
	sd->grp_id = 1 << 16;	/* group ID for isp subdevs */
	FUNC8(sd, res);
	sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

	pads[RESZ_PAD_SINK].flags = MEDIA_PAD_FL_SINK
				    | MEDIA_PAD_FL_MUST_CONNECT;
	pads[RESZ_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;

	me->ops = &resizer_media_ops;
	ret = FUNC2(me, RESZ_PADS_NUM, pads);
	if (ret < 0)
		return ret;

	FUNC5(sd, NULL);

	res->video_in.type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
	res->video_in.ops = &resizer_video_ops;
	res->video_in.isp = FUNC7(res);
	res->video_in.capture_mem = FUNC0(4096 * 4096) * 2 * 3;
	res->video_in.bpl_alignment = 32;
	res->video_out.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	res->video_out.ops = &resizer_video_ops;
	res->video_out.isp = FUNC7(res);
	res->video_out.capture_mem = FUNC0(4096 * 4096) * 2 * 3;
	res->video_out.bpl_alignment = 32;

	ret = FUNC4(&res->video_in, "resizer");
	if (ret < 0)
		goto error_video_in;

	ret = FUNC4(&res->video_out, "resizer");
	if (ret < 0)
		goto error_video_out;

	res->video_out.video.entity.flags |= MEDIA_ENT_FL_DEFAULT;

	return 0;

error_video_out:
	FUNC3(&res->video_in);
error_video_in:
	FUNC1(&res->subdev.entity);
	return ret;
}