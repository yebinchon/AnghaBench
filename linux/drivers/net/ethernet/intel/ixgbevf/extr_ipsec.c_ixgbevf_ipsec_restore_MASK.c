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
struct tx_sa {int /*<<< orphan*/  xs; scalar_t__ used; } ;
struct rx_sa {int /*<<< orphan*/  xs; scalar_t__ used; } ;
struct net_device {int features; } ;
struct ixgbevf_ipsec {struct tx_sa* tx_tbl; struct rx_sa* rx_tbl; } ;
struct ixgbevf_adapter {struct net_device* netdev; struct ixgbevf_ipsec* ipsec; } ;

/* Variables and functions */
 int IXGBE_IPSEC_MAX_SA_COUNT ; 
 int NETIF_F_HW_ESP ; 
 int FUNC0 (struct ixgbevf_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int,int) ; 

void FUNC2(struct ixgbevf_adapter *adapter)
{
	struct ixgbevf_ipsec *ipsec = adapter->ipsec;
	struct net_device *netdev = adapter->netdev;
	int i;

	if (!(adapter->netdev->features & NETIF_F_HW_ESP))
		return;

	/* reload the Rx and Tx keys */
	for (i = 0; i < IXGBE_IPSEC_MAX_SA_COUNT; i++) {
		struct rx_sa *r = &ipsec->rx_tbl[i];
		struct tx_sa *t = &ipsec->tx_tbl[i];
		int ret;

		if (r->used) {
			ret = FUNC0(adapter, r->xs);
			if (ret < 0)
				FUNC1(netdev, "reload rx_tbl[%d] failed = %d\n",
					   i, ret);
		}

		if (t->used) {
			ret = FUNC0(adapter, t->xs);
			if (ret < 0)
				FUNC1(netdev, "reload tx_tbl[%d] failed = %d\n",
					   i, ret);
		}
	}
}