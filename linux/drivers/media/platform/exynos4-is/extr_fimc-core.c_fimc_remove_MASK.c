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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fimc_dev {int /*<<< orphan*/ * clock; } ;

/* Variables and functions */
 size_t CLK_BUS ; 
 size_t CLK_GATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_dev*) ; 
 struct fimc_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct fimc_dev *fimc = FUNC4(pdev);

	FUNC5(&pdev->dev);
	if (!FUNC7(&pdev->dev))
		FUNC0(fimc->clock[CLK_GATE]);
	FUNC6(&pdev->dev);

	FUNC3(fimc);
	FUNC8(&pdev->dev);

	FUNC0(fimc->clock[CLK_BUS]);
	FUNC2(fimc);

	FUNC1(&pdev->dev, "driver unloaded\n");
	return 0;
}