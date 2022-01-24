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
struct b43_wldev {scalar_t__ mac_suspended; int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int B43_IRQ_MAC_SUSPENDED ; 
 int /*<<< orphan*/  B43_MACCTL_ENABLED ; 
 int /*<<< orphan*/  B43_MMIO_GEN_IRQ_REASON ; 
 int /*<<< orphan*/  B43_MMIO_MACCTL ; 
 int /*<<< orphan*/  B43_PS_AWAKE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(struct b43_wldev *dev)
{
	int i;
	u32 tmp;

	FUNC5();
	FUNC0(dev->mac_suspended < 0);

	if (dev->mac_suspended == 0) {
		FUNC2(dev, B43_PS_AWAKE);
		FUNC1(dev, B43_MMIO_MACCTL, ~B43_MACCTL_ENABLED, 0);
		/* force pci to flush the write */
		FUNC3(dev, B43_MMIO_MACCTL);
		for (i = 35; i; i--) {
			tmp = FUNC3(dev, B43_MMIO_GEN_IRQ_REASON);
			if (tmp & B43_IRQ_MAC_SUSPENDED)
				goto out;
			FUNC7(10);
		}
		/* Hm, it seems this will take some time. Use msleep(). */
		for (i = 40; i; i--) {
			tmp = FUNC3(dev, B43_MMIO_GEN_IRQ_REASON);
			if (tmp & B43_IRQ_MAC_SUSPENDED)
				goto out;
			FUNC6(1);
		}
		FUNC4(dev->wl, "MAC suspend failed\n");
	}
out:
	dev->mac_suspended++;
}