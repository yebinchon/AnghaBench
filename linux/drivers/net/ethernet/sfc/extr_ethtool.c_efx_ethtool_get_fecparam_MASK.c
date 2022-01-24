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
struct net_device {int dummy; } ;
struct ethtool_fecparam {int dummy; } ;
struct efx_nic {int /*<<< orphan*/  mac_lock; TYPE_1__* phy_op; } ;
struct TYPE_2__ {int (* get_fecparam ) (struct efx_nic*,struct ethtool_fecparam*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct efx_nic*,struct ethtool_fecparam*) ; 

__attribute__((used)) static int FUNC4(struct net_device *net_dev,
				    struct ethtool_fecparam *fecparam)
{
	struct efx_nic *efx = FUNC2(net_dev);
	int rc;

	if (!efx->phy_op || !efx->phy_op->get_fecparam)
		return -EOPNOTSUPP;
	FUNC0(&efx->mac_lock);
	rc = efx->phy_op->get_fecparam(efx, fecparam);
	FUNC1(&efx->mac_lock);

	return rc;
}