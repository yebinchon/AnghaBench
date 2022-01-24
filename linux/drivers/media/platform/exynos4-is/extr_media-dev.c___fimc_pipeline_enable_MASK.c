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
struct fimc_pipeline {scalar_t__* subdevs; } ;
struct fimc_md {int /*<<< orphan*/ * wbclk; } ;
struct exynos_media_pipeline {int dummy; } ;

/* Variables and functions */
 size_t CLK_IDX_WB_B ; 
 size_t IDX_IS_ISP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fimc_pipeline*,int) ; 
 struct fimc_pipeline* FUNC4 (struct exynos_media_pipeline*) ; 

__attribute__((used)) static int FUNC5(struct exynos_media_pipeline *ep,
				  struct fimc_md *fmd)
{
	struct fimc_pipeline *p = FUNC4(ep);
	int ret;

	/* Enable PXLASYNC clock if this pipeline includes FIMC-IS */
	if (!FUNC0(fmd->wbclk[CLK_IDX_WB_B]) && p->subdevs[IDX_IS_ISP]) {
		ret = FUNC2(fmd->wbclk[CLK_IDX_WB_B]);
		if (ret < 0)
			return ret;
	}

	ret = FUNC3(p, 1);
	if (!ret)
		return 0;

	if (!FUNC0(fmd->wbclk[CLK_IDX_WB_B]) && p->subdevs[IDX_IS_ISP])
		FUNC1(fmd->wbclk[CLK_IDX_WB_B]);

	return ret;
}