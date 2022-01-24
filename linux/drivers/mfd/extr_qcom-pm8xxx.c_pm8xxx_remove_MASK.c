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
struct pm_irq_chip {int /*<<< orphan*/  irqdomain; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pm_irq_chip* FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pm8xxx_remove_child ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	int irq = FUNC4(pdev, 0);
	struct pm_irq_chip *chip = FUNC3(pdev);

	FUNC0(&pdev->dev, NULL, pm8xxx_remove_child);
	FUNC2(irq, NULL, NULL);
	FUNC1(chip->irqdomain);

	return 0;
}