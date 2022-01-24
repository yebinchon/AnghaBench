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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  mmds; int /*<<< orphan*/  prtad; } ;
struct ef4_nic {int /*<<< orphan*/  mac_lock; TYPE_1__ mdio; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MDIO_DEVID1 ; 
 int /*<<< orphan*/  MDIO_DEVID2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ef4_nic*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ef4_nic*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC6(struct ef4_nic *efx)
{
	int rc;
	int devad = FUNC0(efx->mdio.mmds);
	u16 physid1, physid2;

	FUNC3(&efx->mac_lock);

	physid1 = FUNC2(efx, devad, MDIO_DEVID1);
	physid2 = FUNC2(efx, devad, MDIO_DEVID2);

	if ((physid1 == 0x0000) || (physid1 == 0xffff) ||
	    (physid2 == 0x0000) || (physid2 == 0xffff)) {
		FUNC5(efx, hw, efx->net_dev,
			  "no MDIO PHY present with ID %d\n", efx->mdio.prtad);
		rc = -EINVAL;
	} else {
		rc = FUNC1(efx, efx->mdio.mmds);
	}

	FUNC4(&efx->mac_lock);
	return rc;
}