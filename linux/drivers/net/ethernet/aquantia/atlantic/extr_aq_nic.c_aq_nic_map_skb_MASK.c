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
struct sk_buff {scalar_t__ ip_summed; scalar_t__ protocol; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct aq_ring_s {unsigned int sw_tail; struct aq_ring_buff_s* buff_ring; } ;
struct aq_ring_buff_s {unsigned int flags; unsigned int is_gso; int eop_index; unsigned int is_ipv6; unsigned int is_vlan; unsigned int len; unsigned int is_sop; unsigned int is_mapped; unsigned int is_ip_cso; unsigned int is_tcp_cso; unsigned int is_udp_cso; unsigned int is_eop; scalar_t__ pa; struct sk_buff* skb; int /*<<< orphan*/  len_pkt; int /*<<< orphan*/  vlan_tx_tag; int /*<<< orphan*/  len_l4; int /*<<< orphan*/  len_l3; int /*<<< orphan*/  len_l2; int /*<<< orphan*/  mss; } ;
struct TYPE_5__ {scalar_t__ is_vlan_tx_insert; } ;
struct aq_nic_s {TYPE_1__ aq_nic_cfg; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_8__ {int version; scalar_t__ protocol; } ;
struct TYPE_7__ {scalar_t__ nexthdr; } ;
struct TYPE_6__ {unsigned int nr_frags; int /*<<< orphan*/ * frags; int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 unsigned int AQ_CFG_TX_FRAME_MAX ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ NEXTHDR_TCP ; 
 scalar_t__ NEXTHDR_UDP ; 
 int /*<<< orphan*/  FUNC0 (struct aq_nic_s*) ; 
 unsigned int FUNC1 (struct aq_ring_s*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 TYPE_3__* FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC12 (struct sk_buff*) ; 
 unsigned int FUNC13 (struct sk_buff*) ; 
 TYPE_2__* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC19(struct aq_nic_s *self,
				   struct sk_buff *skb,
				   struct aq_ring_s *ring)
{
	unsigned int ret = 0U;
	unsigned int nr_frags = FUNC14(skb)->nr_frags;
	unsigned int frag_count = 0U;
	unsigned int dx = ring->sw_tail;
	struct aq_ring_buff_s *first = NULL;
	struct aq_ring_buff_s *dx_buff = &ring->buff_ring[dx];
	bool need_context_tag = false;

	dx_buff->flags = 0U;

	if (FUNC18(FUNC13(skb))) {
		dx_buff->mss = FUNC14(skb)->gso_size;
		dx_buff->is_gso = 1U;
		dx_buff->len_pkt = skb->len;
		dx_buff->len_l2 = ETH_HLEN;
		dx_buff->len_l3 = FUNC8(skb);
		dx_buff->len_l4 = FUNC17(skb);
		dx_buff->eop_index = 0xffffU;
		dx_buff->is_ipv6 =
			(FUNC7(skb)->version == 6) ? 1U : 0U;
		need_context_tag = true;
	}

	if (self->aq_nic_cfg.is_vlan_tx_insert && FUNC16(skb)) {
		dx_buff->vlan_tx_tag = FUNC15(skb);
		dx_buff->len_pkt = skb->len;
		dx_buff->is_vlan = 1U;
		need_context_tag = true;
	}

	if (need_context_tag) {
		dx = FUNC1(ring, dx);
		dx_buff = &ring->buff_ring[dx];
		dx_buff->flags = 0U;
		++ret;
	}

	dx_buff->len = FUNC12(skb);
	dx_buff->pa = FUNC2(FUNC0(self),
				     skb->data,
				     dx_buff->len,
				     DMA_TO_DEVICE);

	if (FUNC18(FUNC3(FUNC0(self), dx_buff->pa)))
		goto exit;

	first = dx_buff;
	dx_buff->len_pkt = skb->len;
	dx_buff->is_sop = 1U;
	dx_buff->is_mapped = 1U;
	++ret;

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		dx_buff->is_ip_cso = (FUNC6(ETH_P_IP) == skb->protocol) ?
			1U : 0U;

		if (FUNC7(skb)->version == 4) {
			dx_buff->is_tcp_cso =
				(FUNC7(skb)->protocol == IPPROTO_TCP) ?
					1U : 0U;
			dx_buff->is_udp_cso =
				(FUNC7(skb)->protocol == IPPROTO_UDP) ?
					1U : 0U;
		} else if (FUNC7(skb)->version == 6) {
			dx_buff->is_tcp_cso =
				(FUNC9(skb)->nexthdr == NEXTHDR_TCP) ?
					1U : 0U;
			dx_buff->is_udp_cso =
				(FUNC9(skb)->nexthdr == NEXTHDR_UDP) ?
					1U : 0U;
		}
	}

	for (; nr_frags--; ++frag_count) {
		unsigned int frag_len = 0U;
		unsigned int buff_offset = 0U;
		unsigned int buff_size = 0U;
		dma_addr_t frag_pa;
		skb_frag_t *frag = &FUNC14(skb)->frags[frag_count];

		frag_len = FUNC11(frag);

		while (frag_len) {
			if (frag_len > AQ_CFG_TX_FRAME_MAX)
				buff_size = AQ_CFG_TX_FRAME_MAX;
			else
				buff_size = frag_len;

			frag_pa = FUNC10(FUNC0(self),
						   frag,
						   buff_offset,
						   buff_size,
						   DMA_TO_DEVICE);

			if (FUNC18(FUNC3(FUNC0(self),
						       frag_pa)))
				goto mapping_error;

			dx = FUNC1(ring, dx);
			dx_buff = &ring->buff_ring[dx];

			dx_buff->flags = 0U;
			dx_buff->len = buff_size;
			dx_buff->pa = frag_pa;
			dx_buff->is_mapped = 1U;
			dx_buff->eop_index = 0xffffU;

			frag_len -= buff_size;
			buff_offset += buff_size;

			++ret;
		}
	}

	first->eop_index = dx;
	dx_buff->is_eop = 1U;
	dx_buff->skb = skb;
	goto exit;

mapping_error:
	for (dx = ring->sw_tail;
	     ret > 0;
	     --ret, dx = FUNC1(ring, dx)) {
		dx_buff = &ring->buff_ring[dx];

		if (!dx_buff->is_gso && !dx_buff->is_vlan && dx_buff->pa) {
			if (FUNC18(dx_buff->is_sop)) {
				FUNC5(FUNC0(self),
						 dx_buff->pa,
						 dx_buff->len,
						 DMA_TO_DEVICE);
			} else {
				FUNC4(FUNC0(self),
					       dx_buff->pa,
					       dx_buff->len,
					       DMA_TO_DEVICE);
			}
		}
	}

exit:
	return ret;
}