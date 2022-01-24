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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fimc_lite {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_lite*) ; 
 struct fimc_lite* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct fimc_lite *fimc = FUNC3(pdev);
	struct device *dev = &pdev->dev;

	FUNC4(dev);
	FUNC5(dev);
	FUNC2(fimc);
	FUNC6(dev);
	FUNC1(fimc);

	FUNC0(dev, "Driver unloaded\n");
	return 0;
}