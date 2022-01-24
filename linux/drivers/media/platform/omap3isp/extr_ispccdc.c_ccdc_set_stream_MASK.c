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
struct v4l2_subdev {int dummy; } ;
struct isp_device {int dummy; } ;
struct isp_ccdc_device {int state; int output; int /*<<< orphan*/  underrun; } ;

/* Variables and functions */
 int CCDC_OUTPUT_MEMORY ; 
 int /*<<< orphan*/  ISPCCDC_CFG ; 
 int /*<<< orphan*/  ISPCCDC_CFG_VDLC ; 
#define  ISP_PIPELINE_STREAM_CONTINUOUS 130 
#define  ISP_PIPELINE_STREAM_SINGLESHOT 129 
#define  ISP_PIPELINE_STREAM_STOPPED 128 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_CCDC ; 
 int /*<<< orphan*/  OMAP3_ISP_SBL_CCDC_WRITE ; 
 int /*<<< orphan*/  OMAP3_ISP_SUBCLK_CCDC ; 
 int /*<<< orphan*/  FUNC0 (struct isp_ccdc_device*) ; 
 int FUNC1 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct isp_device*,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC9 (struct isp_ccdc_device*) ; 
 struct isp_ccdc_device* FUNC10 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC11(struct v4l2_subdev *sd, int enable)
{
	struct isp_ccdc_device *ccdc = FUNC10(sd);
	struct isp_device *isp = FUNC9(ccdc);
	int ret = 0;

	if (ccdc->state == ISP_PIPELINE_STREAM_STOPPED) {
		if (enable == ISP_PIPELINE_STREAM_STOPPED)
			return 0;

		FUNC8(isp, OMAP3_ISP_SUBCLK_CCDC);
		FUNC4(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_CFG,
			    ISPCCDC_CFG_VDLC);

		FUNC0(ccdc);

		FUNC3(ccdc);
	}

	switch (enable) {
	case ISP_PIPELINE_STREAM_CONTINUOUS:
		if (ccdc->output & CCDC_OUTPUT_MEMORY)
			FUNC6(isp, OMAP3_ISP_SBL_CCDC_WRITE);

		if (ccdc->underrun || !(ccdc->output & CCDC_OUTPUT_MEMORY))
			FUNC2(ccdc);

		ccdc->underrun = 0;
		break;

	case ISP_PIPELINE_STREAM_SINGLESHOT:
		if (ccdc->output & CCDC_OUTPUT_MEMORY &&
		    ccdc->state != ISP_PIPELINE_STREAM_SINGLESHOT)
			FUNC6(isp, OMAP3_ISP_SBL_CCDC_WRITE);

		FUNC2(ccdc);
		break;

	case ISP_PIPELINE_STREAM_STOPPED:
		ret = FUNC1(ccdc);
		if (ccdc->output & CCDC_OUTPUT_MEMORY)
			FUNC5(isp, OMAP3_ISP_SBL_CCDC_WRITE);
		FUNC7(isp, OMAP3_ISP_SUBCLK_CCDC);
		ccdc->underrun = 0;
		break;
	}

	ccdc->state = enable;
	return ret;
}