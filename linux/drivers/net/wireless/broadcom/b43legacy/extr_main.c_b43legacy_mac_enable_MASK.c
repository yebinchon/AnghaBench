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
struct b43legacy_wldev {scalar_t__ mac_suspended; int irq_mask; TYPE_1__* wl; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int B43legacy_IRQ_MAC_SUSPENDED ; 
 int B43legacy_MACCTL_ENABLED ; 
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_MASK ; 
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_REASON ; 
 int /*<<< orphan*/  B43legacy_MMIO_MACCTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int,int) ; 
 int FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct b43legacy_wldev *dev)
{
	dev->mac_suspended--;
	FUNC0(dev->mac_suspended < 0);
	FUNC0(FUNC4());
	if (dev->mac_suspended == 0) {
		FUNC3(dev, B43legacy_MMIO_MACCTL,
				  FUNC2(dev,
				  B43legacy_MMIO_MACCTL)
				  | B43legacy_MACCTL_ENABLED);
		FUNC3(dev, B43legacy_MMIO_GEN_IRQ_REASON,
				  B43legacy_IRQ_MAC_SUSPENDED);
		/* the next two are dummy reads */
		FUNC2(dev, B43legacy_MMIO_MACCTL);
		FUNC2(dev, B43legacy_MMIO_GEN_IRQ_REASON);
		FUNC1(dev, -1, -1);

		/* Re-enable IRQs. */
		FUNC5(&dev->wl->irq_lock);
		FUNC3(dev, B43legacy_MMIO_GEN_IRQ_MASK,
				  dev->irq_mask);
		FUNC6(&dev->wl->irq_lock);
	}
}