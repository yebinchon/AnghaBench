#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ tx_pause; scalar_t__ rx_pause; } ;
struct efx_nic {scalar_t__* link_advertising; int wanted_fc; int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  net_dev; TYPE_2__* phy_op; TYPE_1__* type; } ;
struct TYPE_4__ {int (* reconfigure ) (struct efx_nic*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* prepare_enable_fc_tx ) (struct efx_nic*) ;} ;

/* Variables and functions */
 int EFX_FC_AUTO ; 
 int EFX_FC_RX ; 
 int EFX_FC_TX ; 
 int EINVAL ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*) ; 
 int FUNC8 (struct efx_nic*) ; 

__attribute__((used)) static int FUNC9(struct net_device *net_dev,
				      struct ethtool_pauseparam *pause)
{
	struct efx_nic *efx = FUNC4(net_dev);
	u8 wanted_fc, old_fc;
	u32 old_adv;
	int rc = 0;

	FUNC2(&efx->mac_lock);

	wanted_fc = ((pause->rx_pause ? EFX_FC_RX : 0) |
		     (pause->tx_pause ? EFX_FC_TX : 0) |
		     (pause->autoneg ? EFX_FC_AUTO : 0));

	if ((wanted_fc & EFX_FC_TX) && !(wanted_fc & EFX_FC_RX)) {
		FUNC5(efx, drv, efx->net_dev,
			  "Flow control unsupported: tx ON rx OFF\n");
		rc = -EINVAL;
		goto out;
	}

	if ((wanted_fc & EFX_FC_AUTO) && !efx->link_advertising[0]) {
		FUNC5(efx, drv, efx->net_dev,
			  "Autonegotiation is disabled\n");
		rc = -EINVAL;
		goto out;
	}

	/* Hook for Falcon bug 11482 workaround */
	if (efx->type->prepare_enable_fc_tx &&
	    (wanted_fc & EFX_FC_TX) && !(efx->wanted_fc & EFX_FC_TX))
		efx->type->prepare_enable_fc_tx(efx);

	old_adv = efx->link_advertising[0];
	old_fc = efx->wanted_fc;
	FUNC0(efx, wanted_fc);
	if (efx->link_advertising[0] != old_adv ||
	    (efx->wanted_fc ^ old_fc) & EFX_FC_AUTO) {
		rc = efx->phy_op->reconfigure(efx);
		if (rc) {
			FUNC6(efx, drv, efx->net_dev,
				  "Unable to advertise requested flow "
				  "control setting\n");
			goto out;
		}
	}

	/* Reconfigure the MAC. The PHY *may* generate a link state change event
	 * if the user just changed the advertised capabilities, but there's no
	 * harm doing this twice */
	FUNC1(efx);

out:
	FUNC3(&efx->mac_lock);

	return rc;
}