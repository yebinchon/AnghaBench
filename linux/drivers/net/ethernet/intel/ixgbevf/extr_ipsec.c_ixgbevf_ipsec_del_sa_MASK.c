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
typedef  size_t u16 ;
struct TYPE_3__ {int flags; size_t offload_handle; struct net_device* dev; } ;
struct xfrm_state {TYPE_1__ xso; } ;
struct tx_sa {int dummy; } ;
struct rx_sa {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbevf_ipsec {int /*<<< orphan*/  num_tx_sa; TYPE_2__* tx_tbl; int /*<<< orphan*/  num_rx_sa; TYPE_2__* rx_tbl; } ;
struct ixgbevf_adapter {struct ixgbevf_ipsec* ipsec; } ;
struct TYPE_4__ {int /*<<< orphan*/  pfsa; int /*<<< orphan*/  used; int /*<<< orphan*/  hlist; } ;

/* Variables and functions */
 size_t IXGBE_IPSEC_BASE_RX_INDEX ; 
 size_t IXGBE_IPSEC_BASE_TX_INDEX ; 
 int XFRM_OFFLOAD_INBOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,size_t,size_t) ; 
 struct ixgbevf_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct xfrm_state *xs)
{
	struct net_device *dev = xs->xso.dev;
	struct ixgbevf_adapter *adapter = FUNC4(dev);
	struct ixgbevf_ipsec *ipsec = adapter->ipsec;
	u16 sa_idx;

	if (xs->xso.flags & XFRM_OFFLOAD_INBOUND) {
		sa_idx = xs->xso.offload_handle - IXGBE_IPSEC_BASE_RX_INDEX;

		if (!ipsec->rx_tbl[sa_idx].used) {
			FUNC3(dev, "Invalid Rx SA selected sa_idx=%d offload_handle=%lu\n",
				   sa_idx, xs->xso.offload_handle);
			return;
		}

		FUNC1(adapter, ipsec->rx_tbl[sa_idx].pfsa);
		FUNC0(&ipsec->rx_tbl[sa_idx].hlist);
		FUNC2(&ipsec->rx_tbl[sa_idx], 0, sizeof(struct rx_sa));
		ipsec->num_rx_sa--;
	} else {
		sa_idx = xs->xso.offload_handle - IXGBE_IPSEC_BASE_TX_INDEX;

		if (!ipsec->tx_tbl[sa_idx].used) {
			FUNC3(dev, "Invalid Tx SA selected sa_idx=%d offload_handle=%lu\n",
				   sa_idx, xs->xso.offload_handle);
			return;
		}

		FUNC1(adapter, ipsec->tx_tbl[sa_idx].pfsa);
		FUNC2(&ipsec->tx_tbl[sa_idx], 0, sizeof(struct tx_sa));
		ipsec->num_tx_sa--;
	}
}