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
typedef  void* u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ protocol; scalar_t__ len; } ;
struct ipv6hdr {scalar_t__ nexthdr; } ;
struct iphdr {scalar_t__ protocol; } ;
struct hnae_ring {size_t next_to_use; TYPE_2__* q; struct hnae_desc_cb* desc_cb; struct hnae_desc* desc; } ;
struct hnae_desc_cb {int length; int type; int /*<<< orphan*/  dma; void* priv; } ;
struct TYPE_7__ {void* ra_ri_cs_fe_vld; void* bn_pid; void* paylen; void* l4_len; void* mss; void* tse_vlan_snap_v6_sctp_nth; void* ip_offset; void* send_size; } ;
struct hnae_desc {TYPE_3__ tx; int /*<<< orphan*/  addr; } ;
typedef  enum hns_desc_type { ____Placeholder_hns_desc_type } hns_desc_type ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  scalar_t__ __be16 ;
struct TYPE_8__ {scalar_t__ gso_size; } ;
struct TYPE_6__ {TYPE_1__* handle; } ;
struct TYPE_5__ {int dport_id; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int DESC_TYPE_SKB ; 
 void* ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  HNSV2_TXD_BUFNUM_M ; 
 int /*<<< orphan*/  HNSV2_TXD_FE_B ; 
 int /*<<< orphan*/  HNSV2_TXD_IPV6_B ; 
 int /*<<< orphan*/  HNSV2_TXD_L3CS_B ; 
 int /*<<< orphan*/  HNSV2_TXD_L4CS_B ; 
 int /*<<< orphan*/  HNSV2_TXD_PORTID_M ; 
 int /*<<< orphan*/  HNSV2_TXD_PORTID_S ; 
 int /*<<< orphan*/  HNSV2_TXD_TSE_B ; 
 int /*<<< orphan*/  HNSV2_TXD_VLD_B ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ VLAN_HLEN ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC6 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  next_to_use ; 
 int /*<<< orphan*/  FUNC8 (struct hnae_ring*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 TYPE_4__* FUNC12 (struct sk_buff*) ; 
 void* FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC15(struct hnae_ring *ring, void *priv, int size,
			    int send_sz, dma_addr_t dma, int frag_end,
			    int buf_num, enum hns_desc_type type, int mtu)
{
	struct hnae_desc *desc = &ring->desc[ring->next_to_use];
	struct hnae_desc_cb *desc_cb = &ring->desc_cb[ring->next_to_use];
	struct iphdr *iphdr;
	struct ipv6hdr *ipv6hdr;
	struct sk_buff *skb;
	__be16 protocol;
	u8 bn_pid = 0;
	u8 rrcfv = 0;
	u8 ip_offset = 0;
	u8 tvsvsn = 0;
	u16 mss = 0;
	u8 l4_len = 0;
	u16 paylen = 0;

	desc_cb->priv = priv;
	desc_cb->length = size;
	desc_cb->dma = dma;
	desc_cb->type = type;

	desc->addr = FUNC2(dma);
	desc->tx.send_size = FUNC1((u16)send_sz);

	/* config bd buffer end */
	FUNC3(rrcfv, HNSV2_TXD_VLD_B, 1);
	FUNC4(bn_pid, HNSV2_TXD_BUFNUM_M, 0, buf_num - 1);

	/* fill port_id in the tx bd for sending management pkts */
	FUNC4(bn_pid, HNSV2_TXD_PORTID_M,
		       HNSV2_TXD_PORTID_S, ring->q->handle->dport_id);

	if (type == DESC_TYPE_SKB) {
		skb = (struct sk_buff *)priv;

		if (skb->ip_summed == CHECKSUM_PARTIAL) {
			FUNC11(skb);
			protocol = skb->protocol;
			ip_offset = ETH_HLEN;

			if (protocol == FUNC5(ETH_P_8021Q)) {
				ip_offset += VLAN_HLEN;
				protocol = FUNC14(skb);
				skb->protocol = protocol;
			}

			if (skb->protocol == FUNC5(ETH_P_IP)) {
				iphdr = FUNC6(skb);
				FUNC3(rrcfv, HNSV2_TXD_L3CS_B, 1);
				FUNC3(rrcfv, HNSV2_TXD_L4CS_B, 1);

				/* check for tcp/udp header */
				if (iphdr->protocol == IPPROTO_TCP &&
				    FUNC9(skb)) {
					FUNC3(tvsvsn,
						     HNSV2_TXD_TSE_B, 1);
					l4_len = FUNC13(skb);
					mss = FUNC12(skb)->gso_size;
					paylen = skb->len - FUNC0(skb);
				}
			} else if (skb->protocol == FUNC5(ETH_P_IPV6)) {
				FUNC3(tvsvsn, HNSV2_TXD_IPV6_B, 1);
				ipv6hdr = FUNC7(skb);
				FUNC3(rrcfv, HNSV2_TXD_L4CS_B, 1);

				/* check for tcp/udp header */
				if (ipv6hdr->nexthdr == IPPROTO_TCP &&
				    FUNC9(skb) && FUNC10(skb)) {
					FUNC3(tvsvsn,
						     HNSV2_TXD_TSE_B, 1);
					l4_len = FUNC13(skb);
					mss = FUNC12(skb)->gso_size;
					paylen = skb->len - FUNC0(skb);
				}
			}
			desc->tx.ip_offset = ip_offset;
			desc->tx.tse_vlan_snap_v6_sctp_nth = tvsvsn;
			desc->tx.mss = FUNC1(mss);
			desc->tx.l4_len = l4_len;
			desc->tx.paylen = FUNC1(paylen);
		}
	}

	FUNC3(rrcfv, HNSV2_TXD_FE_B, frag_end);

	desc->tx.bn_pid = bn_pid;
	desc->tx.ra_ri_cs_fe_vld = rrcfv;

	FUNC8(ring, next_to_use);
}