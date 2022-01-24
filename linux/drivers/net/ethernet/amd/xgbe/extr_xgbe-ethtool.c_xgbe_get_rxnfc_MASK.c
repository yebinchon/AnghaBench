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
typedef  int /*<<< orphan*/  u32 ;
struct xgbe_prv_data {int /*<<< orphan*/  rx_ring_count; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_GRXRINGS 128 
 struct xgbe_prv_data* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *netdev,
			  struct ethtool_rxnfc *rxnfc, u32 *rule_locs)
{
	struct xgbe_prv_data *pdata = FUNC0(netdev);

	switch (rxnfc->cmd) {
	case ETHTOOL_GRXRINGS:
		rxnfc->data = pdata->rx_ring_count;
		break;
	default:
		return -EOPNOTSUPP;
	}

	return 0;
}