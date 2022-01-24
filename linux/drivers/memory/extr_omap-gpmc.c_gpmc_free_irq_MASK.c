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
struct gpmc_device {int nirqs; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct gpmc_device*) ; 
 int /*<<< orphan*/ * gpmc_irq_domain ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct gpmc_device *gpmc)
{
	int hwirq;

	FUNC0(gpmc->irq, gpmc);

	for (hwirq = 0; hwirq < gpmc->nirqs; hwirq++)
		FUNC1(FUNC3(gpmc_irq_domain, hwirq));

	FUNC2(gpmc_irq_domain);
	gpmc_irq_domain = NULL;

	return 0;
}