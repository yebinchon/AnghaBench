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
typedef  int u32 ;
struct denali_controller {int irq_status; int irq_mask; int /*<<< orphan*/  dev; int /*<<< orphan*/  complete; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC6(struct denali_controller *denali, u32 irq_mask)
{
	unsigned long time_left, flags;
	u32 irq_status;

	FUNC3(&denali->irq_lock, flags);

	irq_status = denali->irq_status;

	if (irq_mask & irq_status) {
		/* return immediately if the IRQ has already happened. */
		FUNC4(&denali->irq_lock, flags);
		return irq_status;
	}

	denali->irq_mask = irq_mask;
	FUNC2(&denali->complete);
	FUNC4(&denali->irq_lock, flags);

	time_left = FUNC5(&denali->complete,
						FUNC1(1000));
	if (!time_left) {
		FUNC0(denali->dev, "timeout while waiting for irq 0x%x\n",
			irq_mask);
		return 0;
	}

	return denali->irq_status;
}