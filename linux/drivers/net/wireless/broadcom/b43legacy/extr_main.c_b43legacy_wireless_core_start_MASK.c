#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct b43legacy_wldev {TYPE_2__* wl; int /*<<< orphan*/  irq_mask; TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_MASK ; 
 scalar_t__ B43legacy_STAT_INITIALIZED ; 
 int /*<<< orphan*/  B43legacy_STAT_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  b43legacy_interrupt_handler ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct b43legacy_wldev*) ; 

__attribute__((used)) static int FUNC11(struct b43legacy_wldev *dev)
{
	int err;

	FUNC0(FUNC4(dev) != B43legacy_STAT_INITIALIZED);

	FUNC8(dev);
	err = FUNC10(dev->dev->irq, b43legacy_interrupt_handler,
			  IRQF_SHARED, KBUILD_MODNAME, dev);
	if (err) {
		FUNC7(dev->wl, "Cannot request IRQ-%d\n",
		       dev->dev->irq);
		goto out;
	}
	/* We are ready to run. */
	FUNC9(dev->wl->hw);
	FUNC3(dev, B43legacy_STAT_STARTED);

	/* Start data flow (TX/RX) */
	FUNC1(dev);
	FUNC5(dev, B43legacy_MMIO_GEN_IRQ_MASK, dev->irq_mask);

	/* Start maintenance work */
	FUNC2(dev);

	FUNC6(dev->wl, "Wireless interface started\n");
out:
	return err;
}