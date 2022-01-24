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
struct gpmc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpmc_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct gpmc_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct gpmc_device *gpmc = FUNC2(pdev);

	FUNC0(gpmc);
	FUNC1();
	FUNC4(&pdev->dev);
	FUNC3(&pdev->dev);

	return 0;
}