#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct fimc_isp {int dummy; } ;
struct fimc_is {size_t config_index; scalar_t__ state; TYPE_2__* config; TYPE_1__* pdev; } ;
struct TYPE_4__ {scalar_t__* p_region_index; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIMC_IS_CONFIG_TIMEOUT ; 
 int /*<<< orphan*/  IS_ST_IDLE ; 
 int /*<<< orphan*/  IS_ST_INIT_DONE ; 
 int /*<<< orphan*/  IS_ST_OPEN_SENSOR ; 
 int /*<<< orphan*/  IS_ST_PWR_ON ; 
 int /*<<< orphan*/  IS_ST_PWR_SUBIP_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_is*) ; 
 int FUNC5 (struct fimc_is*) ; 
 int FUNC6 (struct fimc_is*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fimc_is* FUNC7 (struct fimc_isp*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (struct v4l2_subdev*,char*) ; 
 struct fimc_isp* FUNC15 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static int FUNC17(struct v4l2_subdev *sd, int on)
{
	struct fimc_isp *isp = FUNC15(sd);
	struct fimc_is *is = FUNC7(isp);
	int ret = 0;

	FUNC11("on: %d\n", on);

	if (on) {
		ret = FUNC8(&is->pdev->dev);
		if (ret < 0)
			return ret;
		FUNC12(IS_ST_PWR_ON, &is->state);

		ret = FUNC5(is);
		if (ret < 0) {
			FUNC14(sd, "firmware booting failed\n");
			FUNC9(&is->pdev->dev);
			return ret;
		}
		FUNC12(IS_ST_PWR_SUBIP_ON, &is->state);

		ret = FUNC3(is);
	} else {
		/* Close sensor */
		if (!FUNC13(IS_ST_PWR_ON, &is->state)) {
			FUNC2(is, 0);

			ret = FUNC6(is, IS_ST_OPEN_SENSOR, 0,
						 FIMC_IS_CONFIG_TIMEOUT);
			if (ret < 0) {
				FUNC14(sd, "sensor close timeout\n");
				return ret;
			}
		}

		/* SUB IP power off */
		if (FUNC13(IS_ST_PWR_SUBIP_ON, &is->state)) {
			FUNC4(is);
			ret = FUNC6(is, IS_ST_PWR_SUBIP_ON, 0,
						 FIMC_IS_CONFIG_TIMEOUT);
			if (ret < 0) {
				FUNC14(sd, "sub-IP power off timeout\n");
				return ret;
			}
		}

		FUNC1(is, 0);
		FUNC10(&is->pdev->dev);

		FUNC0(IS_ST_PWR_ON, &is->state);
		FUNC0(IS_ST_INIT_DONE, &is->state);
		is->state = 0;
		is->config[is->config_index].p_region_index[0] = 0;
		is->config[is->config_index].p_region_index[1] = 0;
		FUNC12(IS_ST_IDLE, &is->state);
		FUNC16();
	}

	return ret;
}