#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct b43_wldev {TYPE_1__* wl; int /*<<< orphan*/  irq_mask; TYPE_3__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_MMIO_GEN_IRQ_MASK ; 
 scalar_t__ B43_STAT_INITIALIZED ; 
 int /*<<< orphan*/  B43_STAT_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  b43_interrupt_handler ; 
 int /*<<< orphan*/  b43_interrupt_thread_handler ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  b43_sdio_interrupt_handler ; 
 int FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct b43_wldev*) ; 

__attribute__((used)) static int FUNC14(struct b43_wldev *dev)
{
	int err;

	FUNC0(FUNC7(dev) != B43_STAT_INITIALIZED);

	FUNC11(dev);
	if (FUNC1(dev->dev)) {
		err = FUNC5(dev, b43_sdio_interrupt_handler);
		if (err) {
			FUNC10(dev->wl, "Cannot request SDIO IRQ\n");
			goto out;
		}
	} else {
		err = FUNC13(dev->dev->irq, b43_interrupt_handler,
					   b43_interrupt_thread_handler,
					   IRQF_SHARED, KBUILD_MODNAME, dev);
		if (err) {
			FUNC10(dev->wl, "Cannot request IRQ-%d\n",
			       dev->dev->irq);
			goto out;
		}
	}

	/* We are ready to run. */
	FUNC12(dev->wl->hw);
	FUNC6(dev, B43_STAT_STARTED);

	/* Start data flow (TX/RX). */
	FUNC3(dev);
	FUNC8(dev, B43_MMIO_GEN_IRQ_MASK, dev->irq_mask);

	/* Start maintenance work */
	FUNC4(dev);

	FUNC2(dev);

	FUNC9(dev->wl, "Wireless interface started\n");
out:
	return err;
}