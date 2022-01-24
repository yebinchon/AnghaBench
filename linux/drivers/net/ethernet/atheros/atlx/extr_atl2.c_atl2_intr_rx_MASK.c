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
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int pkt_size; int vtag; scalar_t__ align; scalar_t__ crc; scalar_t__ mcast; scalar_t__ ok; scalar_t__ vlan; scalar_t__ update; } ;
struct rx_desc {TYPE_1__ status; int /*<<< orphan*/  packet; } ;
struct TYPE_4__ {int rx_bytes; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct atl2_adapter {int rxd_write_ptr; scalar_t__ rxd_ring_size; scalar_t__ rxd_read_ptr; int /*<<< orphan*/  hw; struct rx_desc* rxd_ring; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  REG_MB_RXD_RD_IDX ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC8(struct atl2_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct rx_desc *rxd;
	struct sk_buff *skb;

	do {
		rxd = adapter->rxd_ring+adapter->rxd_write_ptr;
		if (!rxd->status.update)
			break; /* end of tx */

		/* clear this flag at once */
		rxd->status.update = 0;

		if (rxd->status.ok && rxd->status.pkt_size >= 60) {
			int rx_size = (int)(rxd->status.pkt_size - 4);
			/* alloc new buffer */
			skb = FUNC5(netdev, rx_size);
			if (NULL == skb) {
				/*
				 * Check that some rx space is free. If not,
				 * free one and mark stats->rx_dropped++.
				 */
				netdev->stats.rx_dropped++;
				break;
			}
			FUNC4(skb->data, rxd->packet, rx_size);
			FUNC7(skb, rx_size);
			skb->protocol = FUNC2(skb, netdev);
			if (rxd->status.vlan) {
				u16 vlan_tag = (rxd->status.vtag>>4) |
					((rxd->status.vtag&7) << 13) |
					((rxd->status.vtag&8) << 9);

				FUNC1(skb, FUNC3(ETH_P_8021Q), vlan_tag);
			}
			FUNC6(skb);
			netdev->stats.rx_bytes += rx_size;
			netdev->stats.rx_packets++;
		} else {
			netdev->stats.rx_errors++;

			if (rxd->status.ok && rxd->status.pkt_size <= 60)
				netdev->stats.rx_length_errors++;
			if (rxd->status.mcast)
				netdev->stats.multicast++;
			if (rxd->status.crc)
				netdev->stats.rx_crc_errors++;
			if (rxd->status.align)
				netdev->stats.rx_frame_errors++;
		}

		/* advance write ptr */
		if (++adapter->rxd_write_ptr == adapter->rxd_ring_size)
			adapter->rxd_write_ptr = 0;
	} while (1);

	/* update mailbox? */
	adapter->rxd_read_ptr = adapter->rxd_write_ptr;
	FUNC0(&adapter->hw, REG_MB_RXD_RD_IDX, adapter->rxd_read_ptr);
}