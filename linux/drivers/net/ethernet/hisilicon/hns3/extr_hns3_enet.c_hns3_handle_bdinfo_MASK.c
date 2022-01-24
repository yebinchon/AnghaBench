#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {unsigned int len; int /*<<< orphan*/  protocol; } ;
struct net_device {int features; } ;
struct TYPE_11__ {unsigned int rx_bytes; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  rx_pkts; int /*<<< orphan*/  rx_err_cnt; int /*<<< orphan*/  err_pkt_len; int /*<<< orphan*/  l2_err; } ;
struct hns3_enet_ring {int next_to_clean; int desc_num; TYPE_6__* tqp_vector; int /*<<< orphan*/  syncp; TYPE_4__ stats; struct hns3_desc* desc; TYPE_3__* tqp; } ;
struct TYPE_14__ {int /*<<< orphan*/  rss_hash; int /*<<< orphan*/  pkt_len; int /*<<< orphan*/  ol_info; int /*<<< orphan*/  l234_info; int /*<<< orphan*/  bd_base_info; } ;
struct hns3_desc {TYPE_7__ rx; } ;
typedef  enum hns3_pkt_l2t_type { ____Placeholder_hns3_pkt_l2t_type } hns3_pkt_l2t_type ;
struct TYPE_12__ {unsigned int total_bytes; } ;
struct TYPE_13__ {TYPE_5__ rx_group; } ;
struct TYPE_10__ {TYPE_2__* handle; } ;
struct TYPE_8__ {struct net_device* netdev; } ;
struct TYPE_9__ {TYPE_1__ kinfo; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int HNS3_L2_TYPE_MULTICAST ; 
 int /*<<< orphan*/  HNS3_RXD_DMAC_M ; 
 int /*<<< orphan*/  HNS3_RXD_DMAC_S ; 
 int /*<<< orphan*/  HNS3_RXD_L2E_B ; 
 int /*<<< orphan*/  HNS3_RXD_TRUNCAT_B ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hns3_enet_ring*,struct hns3_desc*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct hns3_enet_ring*,struct sk_buff*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hns3_enet_ring*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct hns3_enet_ring *ring, struct sk_buff *skb)
{
	struct net_device *netdev = ring->tqp->handle->kinfo.netdev;
	enum hns3_pkt_l2t_type l2_frame_type;
	u32 bd_base_info, l234info, ol_info;
	struct hns3_desc *desc;
	unsigned int len;
	int pre_ntc, ret;

	/* bdinfo handled below is only valid on the last BD of the
	 * current packet, and ring->next_to_clean indicates the first
	 * descriptor of next packet, so need - 1 below.
	 */
	pre_ntc = ring->next_to_clean ? (ring->next_to_clean - 1) :
					(ring->desc_num - 1);
	desc = &ring->desc[pre_ntc];
	bd_base_info = FUNC8(desc->rx.bd_base_info);
	l234info = FUNC8(desc->rx.l234_info);
	ol_info = FUNC8(desc->rx.ol_info);

	/* Based on hw strategy, the tag offloaded will be stored at
	 * ot_vlan_tag in two layer tag case, and stored at vlan_tag
	 * in one layer tag case.
	 */
	if (netdev->features & NETIF_F_HW_VLAN_CTAG_RX) {
		u16 vlan_tag;

		if (FUNC4(ring, desc, l234info, &vlan_tag))
			FUNC1(skb, FUNC7(ETH_P_8021Q),
					       vlan_tag);
	}

	if (FUNC11(!desc->rx.pkt_len || (l234info & (FUNC0(HNS3_RXD_TRUNCAT_B) |
				  FUNC0(HNS3_RXD_L2E_B))))) {
		FUNC9(&ring->syncp);
		if (l234info & FUNC0(HNS3_RXD_L2E_B))
			ring->stats.l2_err++;
		else
			ring->stats.err_pkt_len++;
		FUNC10(&ring->syncp);

		return -EFAULT;
	}

	len = skb->len;

	/* Do update ip stack process */
	skb->protocol = FUNC2(skb, netdev);

	/* This is needed in order to enable forwarding support */
	ret = FUNC5(ring, skb, l234info,
					bd_base_info, ol_info);
	if (FUNC11(ret)) {
		FUNC9(&ring->syncp);
		ring->stats.rx_err_cnt++;
		FUNC10(&ring->syncp);
		return ret;
	}

	l2_frame_type = FUNC3(l234info, HNS3_RXD_DMAC_M,
					HNS3_RXD_DMAC_S);

	FUNC9(&ring->syncp);
	ring->stats.rx_pkts++;
	ring->stats.rx_bytes += len;

	if (l2_frame_type == HNS3_L2_TYPE_MULTICAST)
		ring->stats.rx_multicast++;

	FUNC10(&ring->syncp);

	ring->tqp_vector->rx_group.total_bytes += len;

	FUNC6(ring, skb, FUNC8(desc->rx.rss_hash));
	return 0;
}