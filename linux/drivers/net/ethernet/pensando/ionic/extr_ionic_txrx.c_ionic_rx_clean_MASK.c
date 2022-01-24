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
struct sk_buff {scalar_t__ csum; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; } ;
struct net_device {int features; } ;
struct ionic_rxq_comp {int pkt_type_color; int csum_flags; int /*<<< orphan*/  vlan_tci; int /*<<< orphan*/  csum; int /*<<< orphan*/  rss_hash; int /*<<< orphan*/  len; scalar_t__ status; } ;
struct ionic_rx_stats {int /*<<< orphan*/  csum_error; int /*<<< orphan*/  csum_none; int /*<<< orphan*/  csum_complete; int /*<<< orphan*/  bytes; int /*<<< orphan*/  pkts; } ;
struct ionic_queue {int /*<<< orphan*/  index; TYPE_1__* lif; } ;
struct ionic_qcq {int /*<<< orphan*/  napi; } ;
struct ionic_desc_info {int dummy; } ;
struct ionic_cq_info {struct ionic_rxq_comp* cq_desc; } ;
typedef  scalar_t__ __wsum ;
struct TYPE_2__ {int /*<<< orphan*/  state; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_COMPLETE ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  IONIC_LIF_QUEUE_RESET ; 
#define  IONIC_PKT_TYPE_IPV4 133 
#define  IONIC_PKT_TYPE_IPV4_TCP 132 
#define  IONIC_PKT_TYPE_IPV4_UDP 131 
#define  IONIC_PKT_TYPE_IPV6 130 
#define  IONIC_PKT_TYPE_IPV6_TCP 129 
#define  IONIC_PKT_TYPE_IPV6_UDP 128 
 int IONIC_RXQ_COMP_CSUM_F_CALC ; 
 int IONIC_RXQ_COMP_CSUM_F_IP_BAD ; 
 int IONIC_RXQ_COMP_CSUM_F_TCP_BAD ; 
 int IONIC_RXQ_COMP_CSUM_F_UDP_BAD ; 
 int IONIC_RXQ_COMP_CSUM_F_VLAN ; 
 int IONIC_RXQ_COMP_PKT_TYPE_MASK ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_L3 ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_L4 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ionic_queue*,struct ionic_desc_info*,struct ionic_cq_info*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC4 (struct ionic_queue*,struct ionic_desc_info*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct ionic_qcq* FUNC8 (struct ionic_queue*) ; 
 struct ionic_rx_stats* FUNC9 (struct ionic_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct ionic_queue *q, struct ionic_desc_info *desc_info,
			   struct ionic_cq_info *cq_info, void *cb_arg)
{
	struct ionic_rxq_comp *comp = cq_info->cq_desc;
	struct ionic_qcq *qcq = FUNC8(q);
	struct sk_buff *skb = cb_arg;
	struct ionic_rx_stats *stats;
	struct net_device *netdev;

	stats = FUNC9(q);
	netdev = q->lif->netdev;

	if (comp->status) {
		FUNC4(q, desc_info, skb);
		return;
	}

	if (FUNC14(FUNC13(IONIC_LIF_QUEUE_RESET, q->lif->state))) {
		/* no packet processing while resetting */
		FUNC4(q, desc_info, skb);
		return;
	}

	stats->pkts++;
	stats->bytes += FUNC5(comp->len);

	FUNC3(q, desc_info, cq_info, &skb);

	FUNC10(skb, FUNC5(comp->len));
	skb->protocol = FUNC1(skb, netdev);

	FUNC11(skb, q->index);

	if (netdev->features & NETIF_F_RXHASH) {
		switch (comp->pkt_type_color & IONIC_RXQ_COMP_PKT_TYPE_MASK) {
		case IONIC_PKT_TYPE_IPV4:
		case IONIC_PKT_TYPE_IPV6:
			FUNC12(skb, FUNC6(comp->rss_hash),
				     PKT_HASH_TYPE_L3);
			break;
		case IONIC_PKT_TYPE_IPV4_TCP:
		case IONIC_PKT_TYPE_IPV6_TCP:
		case IONIC_PKT_TYPE_IPV4_UDP:
		case IONIC_PKT_TYPE_IPV6_UDP:
			FUNC12(skb, FUNC6(comp->rss_hash),
				     PKT_HASH_TYPE_L4);
			break;
		}
	}

	if (netdev->features & NETIF_F_RXCSUM) {
		if (comp->csum_flags & IONIC_RXQ_COMP_CSUM_F_CALC) {
			skb->ip_summed = CHECKSUM_COMPLETE;
			skb->csum = (__wsum)FUNC5(comp->csum);
			stats->csum_complete++;
		}
	} else {
		stats->csum_none++;
	}

	if ((comp->csum_flags & IONIC_RXQ_COMP_CSUM_F_TCP_BAD) ||
	    (comp->csum_flags & IONIC_RXQ_COMP_CSUM_F_UDP_BAD) ||
	    (comp->csum_flags & IONIC_RXQ_COMP_CSUM_F_IP_BAD))
		stats->csum_error++;

	if (netdev->features & NETIF_F_HW_VLAN_CTAG_RX) {
		if (comp->csum_flags & IONIC_RXQ_COMP_CSUM_F_VLAN)
			FUNC0(skb, FUNC2(ETH_P_8021Q),
					       FUNC5(comp->vlan_tci));
	}

	FUNC7(&qcq->napi, skb);
}