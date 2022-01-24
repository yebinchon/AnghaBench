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
struct sfp {int /*<<< orphan*/  timeout; int /*<<< orphan*/  poll; int /*<<< orphan*/ * gpio_irq; int /*<<< orphan*/  dev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int GPIO_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sfp*) ; 
 struct sfp* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static void FUNC3(struct platform_device *pdev)
{
	struct sfp *sfp = FUNC2(pdev);
	int i;

	for (i = 0; i < GPIO_MAX; i++) {
		if (!sfp->gpio_irq[i])
			continue;

		FUNC1(sfp->dev, sfp->gpio_irq[i], sfp);
	}

	FUNC0(&sfp->poll);
	FUNC0(&sfp->timeout);
}