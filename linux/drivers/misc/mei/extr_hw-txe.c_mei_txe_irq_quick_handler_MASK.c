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
struct mei_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 scalar_t__ FUNC0 (struct mei_device*,int) ; 

irqreturn_t FUNC1(int irq, void *dev_id)
{
	struct mei_device *dev = dev_id;

	if (FUNC0(dev, true))
		return IRQ_WAKE_THREAD;
	return IRQ_NONE;
}