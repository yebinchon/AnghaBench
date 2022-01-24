#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct bcma_drv_cc {int dummy; } ;
struct b43_wldev {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__* bdev; } ;
struct TYPE_5__ {TYPE_1__* bus; } ;
struct TYPE_4__ {struct bcma_drv_cc drv_cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_PMU_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bcma_drv_cc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bcma_drv_cc*,int,int) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev, int channel)
{
	struct bcma_drv_cc *cc = &dev->dev->bdev->bus->drv_cc;

	FUNC1(dev, 0x448, ~0x300, (channel == 14) ? 0x200 : 0x100);

	if (channel == 1 || channel == 2 || channel == 3 || channel == 4 ||
	    channel == 9 || channel == 10 || channel == 11 || channel == 12) {
		FUNC6(cc, 0x2, 0x03000c04);
		FUNC5(cc, 0x3, 0x00ffffff, 0x0);
		FUNC6(cc, 0x4, 0x200005c0);

		FUNC4(cc, BCMA_CC_PMU_CTL, 0x400);

		FUNC3(dev, 0x942, 0);

		FUNC0(dev, false);
		FUNC1(dev, 0x424, (u16) ~0xff00, 0x1b00);
		FUNC3(dev, 0x425, 0x5907);
	} else {
		FUNC6(cc, 0x2, 0x03140c04);
		FUNC5(cc, 0x3, 0x00ffffff, 0x333333);
		FUNC6(cc, 0x4, 0x202c2820);

		FUNC4(cc, BCMA_CC_PMU_CTL, 0x400);

		FUNC3(dev, 0x942, 0);

		FUNC0(dev, true);
		FUNC1(dev, 0x424, (u16) ~0xff00, 0x1f00);
		FUNC3(dev, 0x425, 0x590a);
	}

	FUNC2(dev, 0x44a, 0x44);
	FUNC3(dev, 0x44a, 0x80);
}