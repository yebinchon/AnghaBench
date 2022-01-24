#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  irqmask; } ;
struct mt76_dev {TYPE_1__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mt76_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct mt76_dev *dev, u32 addr,
		       u32 clear, u32 set)
{
	unsigned long flags;

	FUNC1(&dev->mmio.irq_lock, flags);
	dev->mmio.irqmask &= ~clear;
	dev->mmio.irqmask |= set;
	FUNC0(dev, addr, dev->mmio.irqmask);
	FUNC2(&dev->mmio.irq_lock, flags);
}