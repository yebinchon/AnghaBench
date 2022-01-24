#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {void* protocol; scalar_t__ len; scalar_t__ ip_summed; int /*<<< orphan*/  data; } ;
struct sge_port_stats {int tx_cso; int /*<<< orphan*/  vlan_insert; int /*<<< orphan*/  tx_tso; int /*<<< orphan*/  tx_need_hdrroom; } ;
struct sge {struct sk_buff** espibug_skb; int /*<<< orphan*/ * port_stats; } ;
struct net_device {size_t if_port; scalar_t__ hard_header_len; scalar_t__ mtu; struct adapter* ml_priv; } ;
struct cpl_tx_pkt_lso {int /*<<< orphan*/  len; void* eth_type_mss; int /*<<< orphan*/  tcp_hdr_words; int /*<<< orphan*/  ip_hdr_words; scalar_t__ l4_csum_dis; scalar_t__ ip_csum_dis; int /*<<< orphan*/  opcode; } ;
struct cpl_tx_pkt {int ip_csum_dis; int l4_csum_dis; size_t iff; int vlan_valid; void* vlan; int /*<<< orphan*/  opcode; } ;
struct adapter {struct sge* sge; } ;
typedef  int netdev_tx_t ;
struct TYPE_8__ {void* ar_op; } ;
struct TYPE_7__ {scalar_t__ protocol; int /*<<< orphan*/  ihl; } ;
struct TYPE_6__ {scalar_t__ gso_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  doff; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPOP_REQUEST ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int CPL_ETH_II ; 
 int CPL_ETH_II_VLAN ; 
 int /*<<< orphan*/  CPL_TX_PKT ; 
 int /*<<< orphan*/  CPL_TX_PKT_LSO ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int /*<<< orphan*/  ETH_P_CPL5 ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int NETDEV_TX_OK ; 
 struct cpl_tx_pkt* FUNC1 (struct sk_buff*,int) ; 
 TYPE_4__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,...) ; 
 int FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 struct cpl_tx_pkt_lso* FUNC13 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC14 (struct sk_buff*,int) ; 
 TYPE_2__* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 int FUNC18 (struct sk_buff*,struct adapter*,int /*<<< orphan*/ ,struct net_device*) ; 
 TYPE_1__* FUNC19 (struct sk_buff*) ; 
 struct sge_port_stats* FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int) ; 

netdev_tx_t FUNC22(struct sk_buff *skb, struct net_device *dev)
{
	struct adapter *adapter = dev->ml_priv;
	struct sge *sge = adapter->sge;
	struct sge_port_stats *st = FUNC20(sge->port_stats[dev->if_port]);
	struct cpl_tx_pkt *cpl;
	struct sk_buff *orig_skb = skb;
	int ret;

	if (skb->protocol == FUNC6(ETH_P_CPL5))
		goto send;

	/*
	 * We are using a non-standard hard_header_len.
	 * Allocate more header room in the rare cases it is not big enough.
	 */
	if (FUNC21(FUNC11(skb) < dev->hard_header_len - ETH_HLEN)) {
		skb = FUNC14(skb, sizeof(struct cpl_tx_pkt_lso));
		++st->tx_need_hdrroom;
		FUNC3(orig_skb);
		if (!skb)
			return NETDEV_TX_OK;
	}

	if (FUNC15(skb)->gso_size) {
		int eth_type;
		struct cpl_tx_pkt_lso *hdr;

		++st->tx_tso;

		eth_type = FUNC12(skb) == ETH_HLEN ?
			CPL_ETH_II : CPL_ETH_II_VLAN;

		hdr = FUNC13(skb, sizeof(*hdr));
		hdr->opcode = CPL_TX_PKT_LSO;
		hdr->ip_csum_dis = hdr->l4_csum_dis = 0;
		hdr->ip_hdr_words = FUNC7(skb)->ihl;
		hdr->tcp_hdr_words = FUNC19(skb)->doff;
		hdr->eth_type_mss = FUNC6(FUNC0(eth_type,
							  FUNC15(skb)->gso_size));
		hdr->len = FUNC5(skb->len - sizeof(*hdr));
		cpl = (struct cpl_tx_pkt *)hdr;
	} else {
		/*
		 * Packets shorter than ETH_HLEN can break the MAC, drop them
		 * early.  Also, we may get oversized packets because some
		 * parts of the kernel don't handle our unusual hard_header_len
		 * right, drop those too.
		 */
		if (FUNC21(skb->len < ETH_HLEN ||
			     skb->len > dev->mtu + FUNC4(skb->data))) {
			FUNC8(dev, "packet size %d hdr %d mtu%d\n",
				   skb->len, FUNC4(skb->data), dev->mtu);
			FUNC3(skb);
			return NETDEV_TX_OK;
		}

		if (skb->ip_summed == CHECKSUM_PARTIAL &&
		    FUNC7(skb)->protocol == IPPROTO_UDP) {
			if (FUNC21(FUNC9(skb))) {
				FUNC8(dev, "unable to do udp checksum\n");
				FUNC3(skb);
				return NETDEV_TX_OK;
			}
		}

		/* Hmmm, assuming to catch the gratious arp... and we'll use
		 * it to flush out stuck espi packets...
		 */
		if ((FUNC21(!adapter->sge->espibug_skb[dev->if_port]))) {
			if (skb->protocol == FUNC6(ETH_P_ARP) &&
			    FUNC2(skb)->ar_op == FUNC6(ARPOP_REQUEST)) {
				adapter->sge->espibug_skb[dev->if_port] = skb;
				/* We want to re-use this skb later. We
				 * simply bump the reference count and it
				 * will not be freed...
				 */
				skb = FUNC10(skb);
			}
		}

		cpl = FUNC1(skb, sizeof(*cpl));
		cpl->opcode = CPL_TX_PKT;
		cpl->ip_csum_dis = 1;    /* SW calculates IP csum */
		cpl->l4_csum_dis = skb->ip_summed == CHECKSUM_PARTIAL ? 0 : 1;
		/* the length field isn't used so don't bother setting it */

		st->tx_cso += (skb->ip_summed == CHECKSUM_PARTIAL);
	}
	cpl->iff = dev->if_port;

	if (FUNC17(skb)) {
		cpl->vlan_valid = 1;
		cpl->vlan = FUNC6(FUNC16(skb));
		st->vlan_insert++;
	} else
		cpl->vlan_valid = 0;

send:
	ret = FUNC18(skb, adapter, 0, dev);

	/* If transmit busy, and we reallocated skb's due to headroom limit,
	 * then silently discard to avoid leak.
	 */
	if (FUNC21(ret != NETDEV_TX_OK && skb != orig_skb)) {
		FUNC3(skb);
		ret = NETDEV_TX_OK;
	}
	return ret;
}