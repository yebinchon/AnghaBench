#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct udphdr {int dummy; } ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; } ;
struct bnad {TYPE_1__* netdev; int /*<<< orphan*/  run_flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  frame_length; void* flags; void* l4_hdr_size_n_offset; void* lso_mss; void* opcode; void* vlan_tag; } ;
struct TYPE_9__ {TYPE_2__ wi; } ;
struct bna_txq_entry {TYPE_3__ hdr; } ;
struct bna_tcb {int priority; } ;
typedef  void* __be16 ;
struct TYPE_12__ {scalar_t__ protocol; } ;
struct TYPE_11__ {scalar_t__ nexthdr; } ;
struct TYPE_10__ {int gso_size; } ;
struct TYPE_7__ {int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RF_CEE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,int /*<<< orphan*/ ) ; 
 int BNA_TXQ_WI_CF_INS_PRIO ; 
 int BNA_TXQ_WI_CF_INS_VLAN ; 
 int BNA_TXQ_WI_CF_IP_CKSUM ; 
 int BNA_TXQ_WI_CF_TCP_CKSUM ; 
 int BNA_TXQ_WI_CF_UDP_CKSUM ; 
 int FUNC1 (int,scalar_t__) ; 
 int BNA_TXQ_WI_SEND ; 
 int BNA_TXQ_WI_SEND_LSO ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int EINVAL ; 
 int ETH_P_IP ; 
 int ETH_P_IPV6 ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ VLAN_ETH_HLEN ; 
 int VLAN_PRIO_SHIFT ; 
 scalar_t__ FUNC2 (struct bnad*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 void* FUNC4 (int) ; 
 TYPE_6__* FUNC5 (struct sk_buff*) ; 
 TYPE_5__* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 TYPE_4__* FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  tcpcsum_offload ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_skb_csum_err ; 
 int /*<<< orphan*/  tx_skb_mss_too_long ; 
 int /*<<< orphan*/  tx_skb_non_tso_too_long ; 
 int /*<<< orphan*/  tx_skb_tcp_hdr ; 
 int /*<<< orphan*/  tx_skb_tso_prepare ; 
 int /*<<< orphan*/  tx_skb_tso_too_short ; 
 int /*<<< orphan*/  tx_skb_udp_hdr ; 
 int /*<<< orphan*/  udpcsum_offload ; 
 scalar_t__ FUNC15 (int) ; 
 void* FUNC16 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC17(struct bnad *bnad, struct bna_tcb *tcb,
		    struct sk_buff *skb, struct bna_txq_entry *txqent)
{
	u16 flags = 0;
	u32 gso_size;
	u16 vlan_tag = 0;

	if (FUNC12(skb)) {
		vlan_tag = (u16)FUNC11(skb);
		flags |= (BNA_TXQ_WI_CF_INS_PRIO | BNA_TXQ_WI_CF_INS_VLAN);
	}
	if (FUNC14(BNAD_RF_CEE_RUNNING, &bnad->run_flags)) {
		vlan_tag = ((tcb->priority & 0x7) << VLAN_PRIO_SHIFT)
				| (vlan_tag & 0x1fff);
		flags |= (BNA_TXQ_WI_CF_INS_PRIO | BNA_TXQ_WI_CF_INS_VLAN);
	}
	txqent->hdr.wi.vlan_tag = FUNC4(vlan_tag);

	if (FUNC8(skb)) {
		gso_size = FUNC9(skb)->gso_size;
		if (FUNC15(gso_size > bnad->netdev->mtu)) {
			FUNC0(bnad, tx_skb_mss_too_long);
			return -EINVAL;
		}
		if (FUNC15((gso_size + FUNC10(skb) +
			      FUNC13(skb)) >= skb->len)) {
			txqent->hdr.wi.opcode = FUNC4(BNA_TXQ_WI_SEND);
			txqent->hdr.wi.lso_mss = 0;
			FUNC0(bnad, tx_skb_tso_too_short);
		} else {
			txqent->hdr.wi.opcode = FUNC4(BNA_TXQ_WI_SEND_LSO);
			txqent->hdr.wi.lso_mss = FUNC4(gso_size);
		}

		if (FUNC2(bnad, skb)) {
			FUNC0(bnad, tx_skb_tso_prepare);
			return -EINVAL;
		}

		flags |= (BNA_TXQ_WI_CF_IP_CKSUM | BNA_TXQ_WI_CF_TCP_CKSUM);
		txqent->hdr.wi.l4_hdr_size_n_offset =
			FUNC4(FUNC1(
			FUNC13(skb) >> 2, FUNC10(skb)));
	} else  {
		txqent->hdr.wi.opcode =	FUNC4(BNA_TXQ_WI_SEND);
		txqent->hdr.wi.lso_mss = 0;

		if (FUNC15(skb->len > (bnad->netdev->mtu + VLAN_ETH_HLEN))) {
			FUNC0(bnad, tx_skb_non_tso_too_long);
			return -EINVAL;
		}

		if (skb->ip_summed == CHECKSUM_PARTIAL) {
			__be16 net_proto = FUNC16(skb);
			u8 proto = 0;

			if (net_proto == FUNC4(ETH_P_IP))
				proto = FUNC5(skb)->protocol;
#ifdef NETIF_F_IPV6_CSUM
			else if (net_proto == htons(ETH_P_IPV6)) {
				/* nexthdr may not be TCP immediately. */
				proto = ipv6_hdr(skb)->nexthdr;
			}
#endif
			if (proto == IPPROTO_TCP) {
				flags |= BNA_TXQ_WI_CF_TCP_CKSUM;
				txqent->hdr.wi.l4_hdr_size_n_offset =
					FUNC4(FUNC1
					      (0, FUNC10(skb)));

				FUNC0(bnad, tcpcsum_offload);

				if (FUNC15(FUNC7(skb) <
					    FUNC10(skb) +
				    FUNC13(skb))) {
					FUNC0(bnad, tx_skb_tcp_hdr);
					return -EINVAL;
				}
			} else if (proto == IPPROTO_UDP) {
				flags |= BNA_TXQ_WI_CF_UDP_CKSUM;
				txqent->hdr.wi.l4_hdr_size_n_offset =
					FUNC4(FUNC1
					      (0, FUNC10(skb)));

				FUNC0(bnad, udpcsum_offload);
				if (FUNC15(FUNC7(skb) <
					    FUNC10(skb) +
				    sizeof(struct udphdr))) {
					FUNC0(bnad, tx_skb_udp_hdr);
					return -EINVAL;
				}
			} else {

				FUNC0(bnad, tx_skb_csum_err);
				return -EINVAL;
			}
		} else
			txqent->hdr.wi.l4_hdr_size_n_offset = 0;
	}

	txqent->hdr.wi.flags = FUNC4(flags);
	txqent->hdr.wi.frame_length = FUNC3(skb->len);

	return 0;
}