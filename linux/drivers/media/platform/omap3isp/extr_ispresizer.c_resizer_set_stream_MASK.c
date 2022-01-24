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
struct v4l2_subdev {int /*<<< orphan*/  name; int /*<<< orphan*/  entity; } ;
struct isp_video {int dmaqueue_flags; } ;
struct isp_res_device {int state; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; int /*<<< orphan*/  input; struct isp_video video_out; } ;
struct isp_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  ISP_PIPELINE_STREAM_CONTINUOUS 130 
#define  ISP_PIPELINE_STREAM_SINGLESHOT 129 
#define  ISP_PIPELINE_STREAM_STOPPED 128 
 int ISP_VIDEO_DMAQUEUE_QUEUED ; 
 int OMAP3_ISP_SBL_RESIZER_READ ; 
 int OMAP3_ISP_SBL_RESIZER_WRITE ; 
 int /*<<< orphan*/  OMAP3_ISP_SUBCLK_RESIZER ; 
 int /*<<< orphan*/  RESIZER_INPUT_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_video*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct isp_res_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct isp_res_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct isp_res_device*) ; 
 struct device* FUNC10 (struct isp_res_device*) ; 
 struct isp_device* FUNC11 (struct isp_res_device*) ; 
 struct isp_res_device* FUNC12 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC13(struct v4l2_subdev *sd, int enable)
{
	struct isp_res_device *res = FUNC12(sd);
	struct isp_video *video_out = &res->video_out;
	struct isp_device *isp = FUNC11(res);
	struct device *dev = FUNC10(res);

	if (res->state == ISP_PIPELINE_STREAM_STOPPED) {
		if (enable == ISP_PIPELINE_STREAM_STOPPED)
			return 0;

		FUNC6(isp, OMAP3_ISP_SUBCLK_RESIZER);
		FUNC7(res);
		FUNC9(res);
	}

	switch (enable) {
	case ISP_PIPELINE_STREAM_CONTINUOUS:
		FUNC4(isp, OMAP3_ISP_SBL_RESIZER_WRITE);
		if (video_out->dmaqueue_flags & ISP_VIDEO_DMAQUEUE_QUEUED) {
			FUNC8(res);
			FUNC1(video_out);
		}
		break;

	case ISP_PIPELINE_STREAM_SINGLESHOT:
		if (res->input == RESIZER_INPUT_MEMORY)
			FUNC4(isp, OMAP3_ISP_SBL_RESIZER_READ);
		FUNC4(isp, OMAP3_ISP_SBL_RESIZER_WRITE);

		FUNC8(res);
		break;

	case ISP_PIPELINE_STREAM_STOPPED:
		if (FUNC2(&sd->entity, &res->wait,
					      &res->stopping))
			FUNC0(dev, "%s: module stop timeout.\n", sd->name);
		FUNC3(isp, OMAP3_ISP_SBL_RESIZER_READ |
				OMAP3_ISP_SBL_RESIZER_WRITE);
		FUNC5(isp, OMAP3_ISP_SUBCLK_RESIZER);
		FUNC1(video_out);
		break;
	}

	res->state = enable;
	return 0;
}