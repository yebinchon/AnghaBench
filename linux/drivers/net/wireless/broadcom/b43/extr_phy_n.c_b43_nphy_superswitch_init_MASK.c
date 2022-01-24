#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int rev; } ;
struct b43_wldev {TYPE_6__* dev; TYPE_1__ phy; } ;
struct TYPE_12__ {int bus_type; TYPE_5__* sdev; TYPE_3__* bdev; } ;
struct TYPE_11__ {TYPE_4__* bus; } ;
struct TYPE_10__ {int /*<<< orphan*/  chipco; } ;
struct TYPE_9__ {TYPE_2__* bus; } ;
struct TYPE_8__ {int /*<<< orphan*/  drv_cc; } ;

/* Variables and functions */
#define  B43_BUS_BCMA 129 
#define  B43_BUS_SSB 128 
 int /*<<< orphan*/  B43_MACCTL_GPOUTSMSK ; 
 int /*<<< orphan*/  B43_MMIO_GPIO_CONTROL ; 
 int /*<<< orphan*/  B43_MMIO_GPIO_MASK ; 
 int /*<<< orphan*/  B43_MMIO_MACCTL ; 
 int /*<<< orphan*/  B43_NPHY_GPIO_HIOEN ; 
 int /*<<< orphan*/  B43_NPHY_GPIO_LOOEN ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_LUT_TRSW_LO1 ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_LUT_TRSW_LO2 ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_LUT_TRSW_UP1 ; 
 int /*<<< orphan*/  B43_NPHY_RFCTL_LUT_TRSW_UP2 ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev, bool init)
{
	if (dev->phy.rev >= 7)
		return;

	if (dev->phy.rev >= 3) {
		if (!init)
			return;
		if (0 /* FIXME */) {
			FUNC3(dev, FUNC0(9, 2), 0x211);
			FUNC3(dev, FUNC0(9, 3), 0x222);
			FUNC3(dev, FUNC0(9, 8), 0x144);
			FUNC3(dev, FUNC0(9, 12), 0x188);
		}
	} else {
		FUNC4(dev, B43_NPHY_GPIO_LOOEN, 0);
		FUNC4(dev, B43_NPHY_GPIO_HIOEN, 0);

		switch (dev->dev->bus_type) {
#ifdef CONFIG_B43_BCMA
		case B43_BUS_BCMA:
			bcma_chipco_gpio_control(&dev->dev->bdev->bus->drv_cc,
						 0xFC00, 0xFC00);
			break;
#endif
#ifdef CONFIG_B43_SSB
		case B43_BUS_SSB:
			ssb_chipco_gpio_control(&dev->dev->sdev->bus->chipco,
						0xFC00, 0xFC00);
			break;
#endif
		}

		FUNC2(dev, B43_MMIO_MACCTL, ~B43_MACCTL_GPOUTSMSK, 0);
		FUNC1(dev, B43_MMIO_GPIO_MASK, ~0, 0xFC00);
		FUNC1(dev, B43_MMIO_GPIO_CONTROL, (~0xFC00 & 0xFFFF),
			      0);

		if (init) {
			FUNC4(dev, B43_NPHY_RFCTL_LUT_TRSW_LO1, 0x2D8);
			FUNC4(dev, B43_NPHY_RFCTL_LUT_TRSW_UP1, 0x301);
			FUNC4(dev, B43_NPHY_RFCTL_LUT_TRSW_LO2, 0x2D8);
			FUNC4(dev, B43_NPHY_RFCTL_LUT_TRSW_UP2, 0x301);
		}
	}
}