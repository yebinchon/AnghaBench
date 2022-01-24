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
struct ucc_geth_private {struct ucc_geth_info* ug_info; } ;
struct ucc_geth_info {int* bdRingLenRx; int* bdRingLenTx; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_pending; int tx_pending; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int UCC_GETH_RX_BD_RING_SIZE_ALIGNMENT ; 
 int UCC_GETH_RX_BD_RING_SIZE_MIN ; 
 int UCC_GETH_TX_BD_RING_SIZE_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 struct ucc_geth_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

__attribute__((used)) static int
FUNC3(struct net_device *netdev,
                    struct ethtool_ringparam *ring)
{
	struct ucc_geth_private *ugeth = FUNC1(netdev);
	struct ucc_geth_info *ug_info = ugeth->ug_info;
	int queue = 0, ret = 0;

	if (ring->rx_pending < UCC_GETH_RX_BD_RING_SIZE_MIN) {
		FUNC0(netdev, "RxBD ring size must be no smaller than %d\n",
			    UCC_GETH_RX_BD_RING_SIZE_MIN);
		return -EINVAL;
	}
	if (ring->rx_pending % UCC_GETH_RX_BD_RING_SIZE_ALIGNMENT) {
		FUNC0(netdev, "RxBD ring size must be multiple of %d\n",
			    UCC_GETH_RX_BD_RING_SIZE_ALIGNMENT);
		return -EINVAL;
	}
	if (ring->tx_pending < UCC_GETH_TX_BD_RING_SIZE_MIN) {
		FUNC0(netdev, "TxBD ring size must be no smaller than %d\n",
			    UCC_GETH_TX_BD_RING_SIZE_MIN);
		return -EINVAL;
	}

	if (FUNC2(netdev))
		return -EBUSY;

	ug_info->bdRingLenRx[queue] = ring->rx_pending;
	ug_info->bdRingLenTx[queue] = ring->tx_pending;

	return ret;
}