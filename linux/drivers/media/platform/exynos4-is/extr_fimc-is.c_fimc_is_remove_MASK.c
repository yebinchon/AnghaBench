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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  f_w; } ;
struct fimc_is {TYPE_1__ fw; int /*<<< orphan*/  pmu_regs; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct fimc_is* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct fimc_is *is = FUNC0(dev);

	FUNC8(dev);
	FUNC9(dev);
	if (!FUNC10(dev))
		FUNC4(dev);
	FUNC6(is->irq, is);
	FUNC5(is);
	FUNC12(dev);
	FUNC3(is);
	FUNC7(is->pmu_regs);
	FUNC1(is);
	FUNC11(is->fw.f_w);
	FUNC2(is);

	return 0;
}