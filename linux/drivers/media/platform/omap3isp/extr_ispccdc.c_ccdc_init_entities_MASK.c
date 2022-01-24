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
struct v4l2_subdev {int grp_id; int flags; int /*<<< orphan*/  name; int /*<<< orphan*/ * internal_ops; struct media_entity entity; } ;
struct media_pad {int flags; } ;
struct TYPE_2__ {int capture_mem; int bpl_alignment; int /*<<< orphan*/  isp; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; } ;
struct isp_ccdc_device {TYPE_1__ video_out; int /*<<< orphan*/  input; struct media_pad* pads; struct v4l2_subdev subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCDC_INPUT_NONE ; 
 int /*<<< orphan*/  CCDC_PADS_NUM ; 
 size_t CCDC_PAD_SINK ; 
 size_t CCDC_PAD_SOURCE_OF ; 
 size_t CCDC_PAD_SOURCE_VP ; 
 int MEDIA_PAD_FL_MUST_CONNECT ; 
 int MEDIA_PAD_FL_SINK ; 
 void* MEDIA_PAD_FL_SOURCE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int V4L2_SUBDEV_FL_HAS_EVENTS ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ccdc_media_ops ; 
 int /*<<< orphan*/  ccdc_v4l2_internal_ops ; 
 int /*<<< orphan*/  ccdc_v4l2_ops ; 
 int /*<<< orphan*/  ccdc_video_ops ; 
 int /*<<< orphan*/  FUNC2 (struct media_entity*) ; 
 int FUNC3 (struct media_entity*,int /*<<< orphan*/ ,struct media_pad*) ; 
 int FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct isp_ccdc_device *ccdc)
{
	struct v4l2_subdev *sd = &ccdc->subdev;
	struct media_pad *pads = ccdc->pads;
	struct media_entity *me = &sd->entity;
	int ret;

	ccdc->input = CCDC_INPUT_NONE;

	FUNC8(sd, &ccdc_v4l2_ops);
	sd->internal_ops = &ccdc_v4l2_internal_ops;
	FUNC5(sd->name, "OMAP3 ISP CCDC", sizeof(sd->name));
	sd->grp_id = 1 << 16;	/* group ID for isp subdevs */
	FUNC7(sd, ccdc);
	sd->flags |= V4L2_SUBDEV_FL_HAS_EVENTS | V4L2_SUBDEV_FL_HAS_DEVNODE;

	pads[CCDC_PAD_SINK].flags = MEDIA_PAD_FL_SINK
				    | MEDIA_PAD_FL_MUST_CONNECT;
	pads[CCDC_PAD_SOURCE_VP].flags = MEDIA_PAD_FL_SOURCE;
	pads[CCDC_PAD_SOURCE_OF].flags = MEDIA_PAD_FL_SOURCE;

	me->ops = &ccdc_media_ops;
	ret = FUNC3(me, CCDC_PADS_NUM, pads);
	if (ret < 0)
		return ret;

	FUNC1(sd, NULL);

	ccdc->video_out.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	ccdc->video_out.ops = &ccdc_video_ops;
	ccdc->video_out.isp = FUNC6(ccdc);
	ccdc->video_out.capture_mem = FUNC0(4096 * 4096) * 3;
	ccdc->video_out.bpl_alignment = 32;

	ret = FUNC4(&ccdc->video_out, "CCDC");
	if (ret < 0)
		goto error;

	return 0;

error:
	FUNC2(me);
	return ret;
}