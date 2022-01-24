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
typedef  unsigned int u32 ;
struct ef4_nic {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  MDIO_DEVS1 ; 
 int /*<<< orphan*/  MDIO_DEVS2 ; 
 unsigned int MDIO_DEVS_PHYXS ; 
 int MDIO_MMD_PHYXS ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct ef4_nic*,int) ; 
 int FUNC2 (struct ef4_nic*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int) ; 

int FUNC5(struct ef4_nic *efx, unsigned int mmd_mask)
{
	int mmd = 0, probe_mmd, devs1, devs2;
	u32 devices;

	/* Historically we have probed the PHYXS to find out what devices are
	 * present,but that doesn't work so well if the PHYXS isn't expected
	 * to exist, if so just find the first item in the list supplied. */
	probe_mmd = (mmd_mask & MDIO_DEVS_PHYXS) ? MDIO_MMD_PHYXS :
	    FUNC0(mmd_mask);

	/* Check all the expected MMDs are present */
	devs1 = FUNC2(efx, probe_mmd, MDIO_DEVS1);
	devs2 = FUNC2(efx, probe_mmd, MDIO_DEVS2);
	if (devs1 < 0 || devs2 < 0) {
		FUNC3(efx, hw, efx->net_dev,
			  "failed to read devices present\n");
		return -EIO;
	}
	devices = devs1 | (devs2 << 16);
	if ((devices & mmd_mask) != mmd_mask) {
		FUNC3(efx, hw, efx->net_dev,
			  "required MMDs not present: got %x, wanted %x\n",
			  devices, mmd_mask);
		return -ENODEV;
	}
	FUNC4(efx, hw, efx->net_dev, "Devices present: %x\n", devices);

	/* Check all required MMDs are responding and happy. */
	while (mmd_mask) {
		if ((mmd_mask & 1) && FUNC1(efx, mmd))
			return -EIO;
		mmd_mask = mmd_mask >> 1;
		mmd++;
	}

	return 0;
}