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
struct b43legacy_wldev {TYPE_1__* dev; int /*<<< orphan*/  periodic_work; struct b43legacy_wl* wl; } ;
struct b43legacy_wl {int /*<<< orphan*/ * tx_queue; int /*<<< orphan*/  mutex; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  irq_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_MASK ; 
 int B43legacy_QOS_QUEUE_NUM ; 
 int /*<<< orphan*/  B43legacy_STAT_INITIALIZED ; 
 scalar_t__ B43legacy_STAT_STARTED ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wl*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC17(struct b43legacy_wldev *dev)
{
	struct b43legacy_wl *wl = dev->wl;
	unsigned long flags;
	int queue_num;

	if (FUNC3(dev) < B43legacy_STAT_STARTED)
		return;

	/* Disable and sync interrupts. We must do this before than
	 * setting the status to INITIALIZED, as the interrupt handler
	 * won't care about IRQs then. */
	FUNC15(&wl->irq_lock, flags);
	FUNC5(dev, B43legacy_MMIO_GEN_IRQ_MASK, 0);
	FUNC1(dev, B43legacy_MMIO_GEN_IRQ_MASK); /* flush */
	FUNC16(&wl->irq_lock, flags);
	FUNC4(dev);

	FUNC2(dev, B43legacy_STAT_INITIALIZED);

	FUNC12(&wl->mutex);
	/* Must unlock as it would otherwise deadlock. No races here.
	 * Cancel the possibly running self-rearming periodic work. */
	FUNC7(&dev->periodic_work);
	FUNC8(&wl->tx_work);
	FUNC11(&wl->mutex);

	/* Drain all TX queues. */
	for (queue_num = 0; queue_num < B43legacy_QOS_QUEUE_NUM; queue_num++) {
		while (FUNC14(&wl->tx_queue[queue_num]))
			FUNC9(FUNC13(&wl->tx_queue[queue_num]));
	}

FUNC0(dev);
	FUNC10(dev->dev->irq, dev);
	FUNC6(wl, "Wireless interface stopped\n");
}