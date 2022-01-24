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
struct exynos_lpass {int /*<<< orphan*/  top; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct exynos_lpass*) ; 
 struct exynos_lpass* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct exynos_lpass *lpass = FUNC1(pdev);

	FUNC0(lpass);
	FUNC2(&pdev->dev);
	if (!FUNC3(&pdev->dev))
		FUNC0(lpass);
	FUNC4(lpass->top);

	return 0;
}