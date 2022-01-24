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
struct sk_buff {size_t queue_mapping; } ;
struct net_device {int dummy; } ;
struct enetc_ndev_priv {int /*<<< orphan*/  active_offloads; struct enetc_bdr** tx_ring; } ;
struct enetc_bdr {int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int ENETC_MAX_SKB_FRAGS ; 
 scalar_t__ ENETC_TXBDS_MAX_NEEDED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct enetc_bdr*) ; 
 int FUNC3 (struct enetc_bdr*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct enetc_ndev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

netdev_tx_t FUNC9(struct sk_buff *skb, struct net_device *ndev)
{
	struct enetc_ndev_priv *priv = FUNC4(ndev);
	struct enetc_bdr *tx_ring;
	int count;

	tx_ring = priv->tx_ring[skb->queue_mapping];

	if (FUNC8(FUNC7(skb)->nr_frags > ENETC_MAX_SKB_FRAGS))
		if (FUNC8(FUNC6(skb)))
			goto drop_packet_err;

	count = FUNC7(skb)->nr_frags + 1; /* fragments + head */
	if (FUNC2(tx_ring) < FUNC0(count)) {
		FUNC5(ndev, tx_ring->index);
		return NETDEV_TX_BUSY;
	}

	count = FUNC3(tx_ring, skb, priv->active_offloads);
	if (FUNC8(!count))
		goto drop_packet_err;

	if (FUNC2(tx_ring) < ENETC_TXBDS_MAX_NEEDED)
		FUNC5(ndev, tx_ring->index);

	return NETDEV_TX_OK;

drop_packet_err:
	FUNC1(skb);
	return NETDEV_TX_OK;
}