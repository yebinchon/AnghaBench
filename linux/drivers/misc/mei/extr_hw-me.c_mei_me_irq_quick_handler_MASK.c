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
typedef  int /*<<< orphan*/  u32 ;
struct mei_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_device*) ; 

irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct mei_device *dev = (struct mei_device *)dev_id;
	u32 hcsr;

	hcsr = FUNC3(dev);
	if (!FUNC2(hcsr))
		return IRQ_NONE;

	FUNC0(dev->dev, "interrupt source 0x%08X\n", FUNC2(hcsr));

	/* disable interrupts on device */
	FUNC1(dev, hcsr);
	return IRQ_WAKE_THREAD;
}