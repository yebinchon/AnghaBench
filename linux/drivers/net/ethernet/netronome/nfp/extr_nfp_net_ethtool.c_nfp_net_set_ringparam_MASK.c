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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ rxd_cnt; scalar_t__ txd_cnt; } ;
struct nfp_net {TYPE_1__ dp; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NFP_NET_MAX_RX_DESCS ; 
 scalar_t__ NFP_NET_MAX_TX_DESCS ; 
 scalar_t__ NFP_NET_MIN_RX_DESCS ; 
 scalar_t__ NFP_NET_MIN_TX_DESCS ; 
 struct nfp_net* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct nfp_net*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
				 struct ethtool_ringparam *ring)
{
	struct nfp_net *nn = FUNC0(netdev);
	u32 rxd_cnt, txd_cnt;

	/* We don't have separate queues/rings for small/large frames. */
	if (ring->rx_mini_pending || ring->rx_jumbo_pending)
		return -EINVAL;

	/* Round up to supported values */
	rxd_cnt = FUNC3(ring->rx_pending);
	txd_cnt = FUNC3(ring->tx_pending);

	if (rxd_cnt < NFP_NET_MIN_RX_DESCS || rxd_cnt > NFP_NET_MAX_RX_DESCS ||
	    txd_cnt < NFP_NET_MIN_TX_DESCS || txd_cnt > NFP_NET_MAX_TX_DESCS)
		return -EINVAL;

	if (nn->dp.rxd_cnt == rxd_cnt && nn->dp.txd_cnt == txd_cnt)
		return 0;

	FUNC2(nn, "Change ring size: RxQ %u->%u, TxQ %u->%u\n",
	       nn->dp.rxd_cnt, rxd_cnt, nn->dp.txd_cnt, txd_cnt);

	return FUNC1(nn, rxd_cnt, txd_cnt);
}