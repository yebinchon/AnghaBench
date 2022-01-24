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
struct sk_buff {int dummy; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;
struct mtk_tx_ring {int thresh; int /*<<< orphan*/  free_count; } ;
struct mtk_mac {struct mtk_eth* hw; } ;
struct mtk_eth {int /*<<< orphan*/  page_lock; int /*<<< orphan*/  state; struct mtk_tx_ring tx_ring; } ;
struct TYPE_4__ {int gso_type; int /*<<< orphan*/  gso_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  check; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_RESETTING ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int SKB_GSO_TCPV4 ; 
 int SKB_GSO_TCPV6 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_eth*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct net_device*,int,struct mtk_tx_ring*,int) ; 
 struct mtk_mac* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_eth*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_eth*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 TYPE_2__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC14 (struct sk_buff*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_err ; 
 int /*<<< orphan*/  tx_queued ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb, struct net_device *dev)
{
	struct mtk_mac *mac = FUNC6(dev);
	struct mtk_eth *eth = mac->hw;
	struct mtk_tx_ring *ring = &eth->tx_ring;
	struct net_device_stats *stats = &dev->stats;
	bool gso = false;
	int tx_num;

	/* normally we can rely on the stack not calling this more than once,
	 * however we have 2 queues running on the same ring so we need to lock
	 * the ring access
	 */
	FUNC12(&eth->page_lock);

	if (FUNC16(FUNC15(MTK_RESETTING, &eth->state)))
		goto drop;

	tx_num = FUNC3(skb);
	if (FUNC16(FUNC0(&ring->free_count) <= tx_num)) {
		FUNC4(eth);
		FUNC7(eth, tx_queued, dev,
			  "Tx Ring full when queue awake!\n");
		FUNC13(&eth->page_lock);
		return NETDEV_TX_BUSY;
	}

	/* TSO: fill MSS info in tcp checksum field */
	if (FUNC10(skb)) {
		if (FUNC9(skb, 0)) {
			FUNC8(eth, tx_err, dev,
				   "GSO expand head fail.\n");
			goto drop;
		}

		if (FUNC11(skb)->gso_type &
				(SKB_GSO_TCPV4 | SKB_GSO_TCPV6)) {
			gso = true;
			FUNC14(skb)->check = FUNC2(FUNC11(skb)->gso_size);
		}
	}

	if (FUNC5(skb, dev, tx_num, ring, gso) < 0)
		goto drop;

	if (FUNC16(FUNC0(&ring->free_count) <= ring->thresh))
		FUNC4(eth);

	FUNC13(&eth->page_lock);

	return NETDEV_TX_OK;

drop:
	FUNC13(&eth->page_lock);
	stats->tx_dropped++;
	FUNC1(skb);
	return NETDEV_TX_OK;
}