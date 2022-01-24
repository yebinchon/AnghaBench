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
struct isp_prev_device {int state; int output; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; int /*<<< orphan*/  input; struct isp_video video_out; } ;
struct isp_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  ISP_PIPELINE_STREAM_CONTINUOUS 130 
#define  ISP_PIPELINE_STREAM_SINGLESHOT 129 
#define  ISP_PIPELINE_STREAM_STOPPED 128 
 int ISP_VIDEO_DMAQUEUE_QUEUED ; 
 int /*<<< orphan*/  OMAP3_ISP_SBL_PREVIEW_READ ; 
 int /*<<< orphan*/  OMAP3_ISP_SBL_PREVIEW_WRITE ; 
 int /*<<< orphan*/  OMAP3_ISP_SUBCLK_PREVIEW ; 
 int /*<<< orphan*/  PREVIEW_INPUT_MEMORY ; 
 int PREVIEW_OUTPUT_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_video*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct isp_prev_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct isp_prev_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct isp_prev_device*) ; 
 struct device* FUNC11 (struct isp_prev_device*) ; 
 struct isp_device* FUNC12 (struct isp_prev_device*) ; 
 struct isp_prev_device* FUNC13 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC14(struct v4l2_subdev *sd, int enable)
{
	struct isp_prev_device *prev = FUNC13(sd);
	struct isp_video *video_out = &prev->video_out;
	struct isp_device *isp = FUNC12(prev);
	struct device *dev = FUNC11(prev);

	if (prev->state == ISP_PIPELINE_STREAM_STOPPED) {
		if (enable == ISP_PIPELINE_STREAM_STOPPED)
			return 0;

		FUNC7(isp, OMAP3_ISP_SUBCLK_PREVIEW);
		FUNC8(prev);
		FUNC0(&prev->stopping, 0);
		FUNC10(prev);
	}

	switch (enable) {
	case ISP_PIPELINE_STREAM_CONTINUOUS:
		if (prev->output & PREVIEW_OUTPUT_MEMORY)
			FUNC5(isp, OMAP3_ISP_SBL_PREVIEW_WRITE);

		if (video_out->dmaqueue_flags & ISP_VIDEO_DMAQUEUE_QUEUED ||
		    !(prev->output & PREVIEW_OUTPUT_MEMORY))
			FUNC9(prev);

		FUNC2(video_out);
		break;

	case ISP_PIPELINE_STREAM_SINGLESHOT:
		if (prev->input == PREVIEW_INPUT_MEMORY)
			FUNC5(isp, OMAP3_ISP_SBL_PREVIEW_READ);
		if (prev->output & PREVIEW_OUTPUT_MEMORY)
			FUNC5(isp, OMAP3_ISP_SBL_PREVIEW_WRITE);

		FUNC9(prev);
		break;

	case ISP_PIPELINE_STREAM_STOPPED:
		if (FUNC3(&sd->entity, &prev->wait,
					      &prev->stopping))
			FUNC1(dev, "%s: stop timeout.\n", sd->name);
		FUNC4(isp, OMAP3_ISP_SBL_PREVIEW_READ);
		FUNC4(isp, OMAP3_ISP_SBL_PREVIEW_WRITE);
		FUNC6(isp, OMAP3_ISP_SUBCLK_PREVIEW);
		FUNC2(video_out);
		break;
	}

	prev->state = enable;
	return 0;
}