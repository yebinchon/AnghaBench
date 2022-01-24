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
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__* dev; } ;
struct TYPE_2__ {int core_rev; } ;

/* Variables and functions */
 int B43_MACCTL_GMODE ; 
 int B43_MACCTL_IHR_ENABLED ; 
 int /*<<< orphan*/  B43_MMIO_MACCTL ; 
 int /*<<< orphan*/  B43_MMIO_TSF_CFP_START ; 
 int /*<<< orphan*/  B43_MMIO_TSF_CFP_START_HIGH ; 
 int /*<<< orphan*/  B43_MMIO_TSF_CFP_START_LOW ; 
 int /*<<< orphan*/  B43_SHM_SHARED ; 
 int ENODEV ; 
 int FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC10(struct b43_wldev *dev)
{
	u32 v, backup0, backup4;

	backup0 = FUNC3(dev, B43_SHM_SHARED, 0);
	backup4 = FUNC3(dev, B43_SHM_SHARED, 4);

	/* Check for read/write and endianness problems. */
	FUNC5(dev, B43_SHM_SHARED, 0, 0x55AAAA55);
	if (FUNC3(dev, B43_SHM_SHARED, 0) != 0x55AAAA55)
		goto error;
	FUNC5(dev, B43_SHM_SHARED, 0, 0xAA5555AA);
	if (FUNC3(dev, B43_SHM_SHARED, 0) != 0xAA5555AA)
		goto error;

	/* Check if unaligned 32bit SHM_SHARED access works properly.
	 * However, don't bail out on failure, because it's noncritical. */
	FUNC4(dev, B43_SHM_SHARED, 0, 0x1122);
	FUNC4(dev, B43_SHM_SHARED, 2, 0x3344);
	FUNC4(dev, B43_SHM_SHARED, 4, 0x5566);
	FUNC4(dev, B43_SHM_SHARED, 6, 0x7788);
	if (FUNC3(dev, B43_SHM_SHARED, 2) != 0x55663344)
		FUNC9(dev->wl, "Unaligned 32bit SHM read access is broken\n");
	FUNC5(dev, B43_SHM_SHARED, 2, 0xAABBCCDD);
	if (FUNC2(dev, B43_SHM_SHARED, 0) != 0x1122 ||
	    FUNC2(dev, B43_SHM_SHARED, 2) != 0xCCDD ||
	    FUNC2(dev, B43_SHM_SHARED, 4) != 0xAABB ||
	    FUNC2(dev, B43_SHM_SHARED, 6) != 0x7788)
		FUNC9(dev->wl, "Unaligned 32bit SHM write access is broken\n");

	FUNC5(dev, B43_SHM_SHARED, 0, backup0);
	FUNC5(dev, B43_SHM_SHARED, 4, backup4);

	if ((dev->dev->core_rev >= 3) && (dev->dev->core_rev <= 10)) {
		/* The 32bit register shadows the two 16bit registers
		 * with update sideeffects. Validate this. */
		FUNC6(dev, B43_MMIO_TSF_CFP_START, 0xAAAA);
		FUNC7(dev, B43_MMIO_TSF_CFP_START, 0xCCCCBBBB);
		if (FUNC0(dev, B43_MMIO_TSF_CFP_START_LOW) != 0xBBBB)
			goto error;
		if (FUNC0(dev, B43_MMIO_TSF_CFP_START_HIGH) != 0xCCCC)
			goto error;
	}
	FUNC7(dev, B43_MMIO_TSF_CFP_START, 0);

	v = FUNC1(dev, B43_MMIO_MACCTL);
	v |= B43_MACCTL_GMODE;
	if (v != (B43_MACCTL_GMODE | B43_MACCTL_IHR_ENABLED))
		goto error;

	return 0;
error:
	FUNC8(dev->wl, "Failed to validate the chipaccess\n");
	return -ENODEV;
}