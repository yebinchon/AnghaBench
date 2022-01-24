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
struct fimc_md {struct clk** wbclk; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  use_isp; TYPE_2__* camclk; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  clk_name ;
struct TYPE_4__ {struct clk* clock; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 size_t CLK_IDX_WB_A ; 
 int CLK_IDX_WB_B ; 
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FIMC_MAX_CAMCLKS ; 
 int FIMC_MAX_WBCLKS ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct fimc_md*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC8(struct fimc_md *fmd)
{
	struct device *dev = &fmd->pdev->dev;
	char clk_name[32];
	struct clk *clock;
	int i, ret = 0;

	for (i = 0; i < FIMC_MAX_CAMCLKS; i++)
		fmd->camclk[i].clock = FUNC0(-EINVAL);

	for (i = 0; i < FIMC_MAX_CAMCLKS; i++) {
		FUNC6(clk_name, sizeof(clk_name), "sclk_cam%u", i);
		clock = FUNC3(dev, clk_name);

		if (FUNC1(clock)) {
			FUNC4(dev, "Failed to get clock: %s\n", clk_name);
			ret = FUNC2(clock);
			break;
		}
		fmd->camclk[i].clock = clock;
	}
	if (ret)
		FUNC5(fmd);

	if (!fmd->use_isp)
		return 0;
	/*
	 * For now get only PIXELASYNCM1 clock (Writeback B/ISP),
	 * leave PIXELASYNCM0 out for the LCD Writeback driver.
	 */
	fmd->wbclk[CLK_IDX_WB_A] = FUNC0(-EINVAL);

	for (i = CLK_IDX_WB_B; i < FIMC_MAX_WBCLKS; i++) {
		FUNC6(clk_name, sizeof(clk_name), "pxl_async%u", i);
		clock = FUNC3(dev, clk_name);
		if (FUNC1(clock)) {
			FUNC7(&fmd->v4l2_dev, "Failed to get clock: %s\n",
				  clk_name);
			ret = FUNC2(clock);
			break;
		}
		fmd->wbclk[i] = clock;
	}
	if (ret)
		FUNC5(fmd);

	return ret;
}