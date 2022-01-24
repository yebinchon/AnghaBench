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
struct platform_device {int dummy; } ;
struct ab8500_gpadc {scalar_t__ irq_sw; scalar_t__ irq_hw; int /*<<< orphan*/  dev; int /*<<< orphan*/  regu; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct ab8500_gpadc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ab8500_gpadc* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct ab8500_gpadc *gpadc = FUNC2(pdev);

	/* remove this gpadc entry from the list */
	FUNC1(&gpadc->node);
	/* remove interrupt  - completion of Sw ADC conversion */
	if (gpadc->irq_sw >= 0)
		FUNC0(gpadc->irq_sw, gpadc);
	if (gpadc->irq_hw >= 0)
		FUNC0(gpadc->irq_hw, gpadc);

	FUNC4(gpadc->dev);
	FUNC3(gpadc->dev);

	FUNC7(gpadc->regu);

	FUNC6(gpadc->dev);

	FUNC5(gpadc->dev);

	return 0;
}