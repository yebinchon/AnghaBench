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
struct ethtool_fecparam {int /*<<< orphan*/  fec; } ;
struct efx_nic {int /*<<< orphan*/  fec_config; int /*<<< orphan*/  loopback_mode; int /*<<< orphan*/  link_advertising; struct efx_mcdi_phy_data* phy_data; } ;
struct efx_mcdi_phy_data {int forced_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Autoneg_BIT ; 
 int MC_CMD_PHY_CAP_AN_LBN ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*) ; 
 int FUNC1 (struct efx_nic*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct efx_nic *efx,
				     const struct ethtool_fecparam *fec)
{
	struct efx_mcdi_phy_data *phy_cfg = efx->phy_data;
	u32 caps;
	int rc;

	/* Work out what efx_mcdi_phy_set_link_ksettings() would produce from
	 * saved advertising bits
	 */
	if (FUNC4(ETHTOOL_LINK_MODE_Autoneg_BIT, efx->link_advertising))
		caps = (FUNC3(efx->link_advertising) |
			1 << MC_CMD_PHY_CAP_AN_LBN);
	else
		caps = phy_cfg->forced_cap;

	caps |= FUNC2(fec->fec);
	rc = FUNC1(efx, caps, FUNC0(efx),
			       efx->loopback_mode, 0);
	if (rc)
		return rc;

	/* Record the new FEC setting for subsequent set_link calls */
	efx->fec_config = fec->fec;
	return 0;
}