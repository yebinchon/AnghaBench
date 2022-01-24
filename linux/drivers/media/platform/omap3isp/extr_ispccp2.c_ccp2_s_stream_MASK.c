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
struct v4l2_subdev {int /*<<< orphan*/  name; int /*<<< orphan*/  entity; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct isp_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  src_ofst; int /*<<< orphan*/  vsize_count; int /*<<< orphan*/  hsize_count; } ;
struct isp_ccp2_device {int state; int /*<<< orphan*/  phy; int /*<<< orphan*/  input; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; TYPE_1__ mem_cfg; struct v4l2_mbus_framefmt* formats; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCP2_INPUT_MEMORY ; 
 int /*<<< orphan*/  CCP2_INPUT_SENSOR ; 
 size_t CCP2_PAD_SINK ; 
#define  ISP_PIPELINE_STREAM_CONTINUOUS 130 
#define  ISP_PIPELINE_STREAM_SINGLESHOT 129 
#define  ISP_PIPELINE_STREAM_STOPPED 128 
 int /*<<< orphan*/  OMAP3_ISP_SBL_CSI1_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_ccp2_device*) ; 
 int FUNC2 (struct isp_ccp2_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_ccp2_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_ccp2_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_ccp2_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct isp_device*,int /*<<< orphan*/ ) ; 
 struct device* FUNC12 (struct isp_ccp2_device*) ; 
 struct isp_device* FUNC13 (struct isp_ccp2_device*) ; 
 struct isp_ccp2_device* FUNC14 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC15(struct v4l2_subdev *sd, int enable)
{
	struct isp_ccp2_device *ccp2 = FUNC14(sd);
	struct isp_device *isp = FUNC13(ccp2);
	struct device *dev = FUNC12(ccp2);
	int ret;

	if (ccp2->state == ISP_PIPELINE_STREAM_STOPPED) {
		if (enable == ISP_PIPELINE_STREAM_STOPPED)
			return 0;
		FUNC0(&ccp2->stopping, 0);
	}

	switch (enable) {
	case ISP_PIPELINE_STREAM_CONTINUOUS:
		if (ccp2->phy) {
			ret = FUNC7(ccp2->phy, &sd->entity);
			if (ret < 0)
				return ret;
		}

		FUNC1(ccp2);
		FUNC5(ccp2);

		/* Enable CSI1/CCP2 interface */
		ret = FUNC2(ccp2, 1);
		if (ret < 0) {
			if (ccp2->phy)
				FUNC8(ccp2->phy);
			return ret;
		}
		break;

	case ISP_PIPELINE_STREAM_SINGLESHOT:
		if (ccp2->state != ISP_PIPELINE_STREAM_SINGLESHOT) {
			struct v4l2_mbus_framefmt *format;

			format = &ccp2->formats[CCP2_PAD_SINK];

			ccp2->mem_cfg.hsize_count = format->width;
			ccp2->mem_cfg.vsize_count = format->height;
			ccp2->mem_cfg.src_ofst = 0;

			FUNC3(ccp2, &ccp2->mem_cfg);
			FUNC11(isp, OMAP3_ISP_SBL_CSI1_READ);
			FUNC5(ccp2);
		}
		FUNC4(ccp2, 1);
		break;

	case ISP_PIPELINE_STREAM_STOPPED:
		if (FUNC9(&sd->entity, &ccp2->wait,
					      &ccp2->stopping))
			FUNC6(dev, "%s: module stop timeout.\n", sd->name);
		if (ccp2->input == CCP2_INPUT_MEMORY) {
			FUNC4(ccp2, 0);
			FUNC10(isp, OMAP3_ISP_SBL_CSI1_READ);
		} else if (ccp2->input == CCP2_INPUT_SENSOR) {
			/* Disable CSI1/CCP2 interface */
			FUNC2(ccp2, 0);
			if (ccp2->phy)
				FUNC8(ccp2->phy);
		}
		break;
	}

	ccp2->state = enable;
	return 0;
}