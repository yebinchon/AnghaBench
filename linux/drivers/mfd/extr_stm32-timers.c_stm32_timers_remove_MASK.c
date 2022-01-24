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
struct stm32_timers {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct stm32_timers* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct stm32_timers*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct stm32_timers *ddata = FUNC1(pdev);

	/*
	 * Don't use devm_ here: enfore of_platform_depopulate() happens before
	 * DMA are released, to avoid race on DMA.
	 */
	FUNC0(&pdev->dev);
	FUNC2(&pdev->dev, ddata);

	return 0;
}