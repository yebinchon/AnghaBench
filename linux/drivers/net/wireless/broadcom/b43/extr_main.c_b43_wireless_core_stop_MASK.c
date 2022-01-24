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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct b43_wldev {TYPE_1__* dev; int /*<<< orphan*/  periodic_work; struct b43_wl* wl; } ;
struct b43_wl {int /*<<< orphan*/  hw; int /*<<< orphan*/ * tx_queue; struct b43_wldev* current_dev; int /*<<< orphan*/  mutex; int /*<<< orphan*/  hardirq_lock; int /*<<< orphan*/  tx_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MMIO_GEN_IRQ_MASK ; 
 int B43_QOS_QUEUE_NUM ; 
 int /*<<< orphan*/  B43_STAT_INITIALIZED ; 
 scalar_t__ B43_STAT_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wl*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct b43_wldev * FUNC21(struct b43_wldev *dev)
{
	struct b43_wl *wl;
	struct b43_wldev *orig_dev;
	u32 mask;
	int queue_num;

	if (!dev)
		return NULL;
	wl = dev->wl;
redo:
	if (!dev || FUNC8(dev) < B43_STAT_STARTED)
		return dev;

	/* Cancel work. Unlock to avoid deadlocks. */
	FUNC16(&wl->mutex);
	FUNC11(&dev->periodic_work);
	FUNC12(&wl->tx_work);
	FUNC3(dev);
	FUNC15(&wl->mutex);
	dev = wl->current_dev;
	if (!dev || FUNC8(dev) < B43_STAT_STARTED) {
		/* Whoops, aliens ate up the device while we were unlocked. */
		return dev;
	}

	/* Disable interrupts on the device. */
	FUNC7(dev, B43_STAT_INITIALIZED);
	if (FUNC1(dev->dev)) {
		/* wl->mutex is locked. That is enough. */
		FUNC9(dev, B43_MMIO_GEN_IRQ_MASK, 0);
		FUNC5(dev, B43_MMIO_GEN_IRQ_MASK);	/* Flush */
	} else {
		FUNC19(&wl->hardirq_lock);
		FUNC9(dev, B43_MMIO_GEN_IRQ_MASK, 0);
		FUNC5(dev, B43_MMIO_GEN_IRQ_MASK);	/* Flush */
		FUNC20(&wl->hardirq_lock);
	}
	/* Synchronize and free the interrupt handlers. Unlock to avoid deadlocks. */
	orig_dev = dev;
	FUNC16(&wl->mutex);
	if (FUNC1(dev->dev))
		FUNC6(dev);
	else
		FUNC13(dev->dev->irq, dev);
	FUNC15(&wl->mutex);
	dev = wl->current_dev;
	if (!dev)
		return dev;
	if (dev != orig_dev) {
		if (FUNC8(dev) >= B43_STAT_STARTED)
			goto redo;
		return dev;
	}
	mask = FUNC5(dev, B43_MMIO_GEN_IRQ_MASK);
	FUNC0(mask != 0xFFFFFFFF && mask);

	/* Drain all TX queues. */
	for (queue_num = 0; queue_num < B43_QOS_QUEUE_NUM; queue_num++) {
		while (FUNC18(&wl->tx_queue[queue_num])) {
			struct sk_buff *skb;

			skb = FUNC17(&wl->tx_queue[queue_num]);
			FUNC14(wl->hw, skb);
		}
	}

	FUNC4(dev);
	FUNC2(dev);
	FUNC10(wl, "Wireless interface stopped\n");

	return dev;
}