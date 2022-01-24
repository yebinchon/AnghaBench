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
struct ti_tscadc_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ti_tscadc_dev* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct ti_tscadc_dev	*tscadc = FUNC1(pdev);

	FUNC4(tscadc->regmap, REG_SE, 0x00);

	FUNC3(&pdev->dev);
	FUNC2(&pdev->dev);

	FUNC0(tscadc->dev);

	return 0;
}