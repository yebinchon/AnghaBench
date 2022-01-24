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
struct qt202x_phy_data {int phy_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  prtad; } ;
struct ef4_nic {scalar_t__ phy_type; int phy_mode; scalar_t__ loopback_mode; TYPE_1__ mdio; struct qt202x_phy_data* phy_data; } ;

/* Variables and functions */
 scalar_t__ LOOPBACK_PCS ; 
 scalar_t__ LOOPBACK_PMAPMD ; 
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 int PHY_MODE_LOW_POWER ; 
 int PHY_MODE_TX_DISABLED ; 
 scalar_t__ PHY_TYPE_QT2025C ; 
 int /*<<< orphan*/  PMA_PMD_FTX_CTRL2_REG ; 
 int PMA_PMD_FTX_STATIC_LBN ; 
 int /*<<< orphan*/  FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*) ; 

__attribute__((used)) static int FUNC5(struct ef4_nic *efx)
{
	struct qt202x_phy_data *phy_data = efx->phy_data;

	if (efx->phy_type == PHY_TYPE_QT2025C) {
		int rc = FUNC3(efx);
		if (rc)
			return rc;

		/* There are several different register bits which can
		 * disable TX (and save power) on direct-attach cables
		 * or optical transceivers, varying somewhat between
		 * firmware versions.  Only 'static mode' appears to
		 * cover everything. */
		FUNC2(
			&efx->mdio, efx->mdio.prtad, MDIO_MMD_PMAPMD,
			PMA_PMD_FTX_CTRL2_REG, 1 << PMA_PMD_FTX_STATIC_LBN,
			efx->phy_mode & PHY_MODE_TX_DISABLED ||
			efx->phy_mode & PHY_MODE_LOW_POWER ||
			efx->loopback_mode == LOOPBACK_PCS ||
			efx->loopback_mode == LOOPBACK_PMAPMD);
	} else {
		/* Reset the PHY when moving from tx off to tx on */
		if (!(efx->phy_mode & PHY_MODE_TX_DISABLED) &&
		    (phy_data->phy_mode & PHY_MODE_TX_DISABLED))
			FUNC4(efx);

		FUNC1(efx);
	}

	FUNC0(efx);

	phy_data->phy_mode = efx->phy_mode;

	return 0;
}