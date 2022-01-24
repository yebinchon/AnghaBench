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
typedef  int u32 ;
struct sk_buff {int features; int /*<<< orphan*/  ip_summed; } ;
struct bnad_rx_unmap_q {int /*<<< orphan*/  type; struct bnad_rx_unmap* unmap; } ;
struct bnad_rx_unmap {struct sk_buff* skb; } ;
struct bnad_rx_ctrl {int /*<<< orphan*/  napi; } ;
struct bnad {struct sk_buff* netdev; } ;
struct bna_rcb {int consumer_index; int /*<<< orphan*/  flags; int /*<<< orphan*/  q_depth; TYPE_1__* rxq; struct bnad_rx_unmap_q* unmap_q; } ;
struct bna_pkt_rate {int dummy; } ;
struct bna_cq_entry {scalar_t__ valid; int /*<<< orphan*/  vlan_tag; int /*<<< orphan*/  flags; int /*<<< orphan*/  length; int /*<<< orphan*/  rxq_id; } ;
struct bna_ccb {size_t producer_index; struct bna_rcb** rcb; int /*<<< orphan*/  i_dbell; int /*<<< orphan*/  q_depth; int /*<<< orphan*/  bytes_per_intr; struct bna_cq_entry* sw_q; struct bnad_rx_ctrl* ctrl; struct bna_pkt_rate pkt_rate; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_packets_with_error; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BNAD_RXQ_STARTED ; 
 int BNA_CQ_EF_EOP ; 
 int BNA_CQ_EF_FCS_ERROR ; 
 int BNA_CQ_EF_MAC_ERROR ; 
 int BNA_CQ_EF_TOO_LONG ; 
 int BNA_CQ_EF_VLAN ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bna_pkt_rate*,int) ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnad*,struct bna_rcb*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bnad*,struct sk_buff*,struct bnad_rx_unmap*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bna_ccb*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bnad*,struct bna_rcb*) ; 
 int flags_cksum_prot_mask ; 
 int flags_tcp4 ; 
 int flags_tcp6 ; 
 int flags_udp4 ; 
 int flags_udp6 ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 struct sk_buff* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int) ; 

__attribute__((used)) static u32
FUNC25(struct bnad *bnad, struct bna_ccb *ccb, int budget)
{
	struct bna_cq_entry *cq, *cmpl, *next_cmpl;
	struct bna_rcb *rcb = NULL;
	struct bnad_rx_unmap_q *unmap_q;
	struct bnad_rx_unmap *unmap = NULL;
	struct sk_buff *skb = NULL;
	struct bna_pkt_rate *pkt_rt = &ccb->pkt_rate;
	struct bnad_rx_ctrl *rx_ctrl = ccb->ctrl;
	u32 packets = 0, len = 0, totlen = 0;
	u32 pi, vec, sop_ci = 0, nvecs = 0;
	u32 flags, masked_flags;

	FUNC20(bnad->netdev);

	cq = ccb->sw_q;

	while (packets < budget) {
		cmpl = &cq[ccb->producer_index];
		if (!cmpl->valid)
			break;
		/* The 'valid' field is set by the adapter, only after writing
		 * the other fields of completion entry. Hence, do not load
		 * other fields of completion entry *before* the 'valid' is
		 * loaded. Adding the rmb() here prevents the compiler and/or
		 * CPU from reordering the reads which would potentially result
		 * in reading stale values in completion entry.
		 */
		FUNC21();

		FUNC4(pkt_rt, FUNC19(cmpl->length));

		if (FUNC7(cmpl->rxq_id))
			rcb = ccb->rcb[1];
		else
			rcb = ccb->rcb[0];

		unmap_q = rcb->unmap_q;

		/* start of packet ci */
		sop_ci = rcb->consumer_index;

		if (FUNC1(unmap_q->type)) {
			unmap = &unmap_q->unmap[sop_ci];
			skb = unmap->skb;
		} else {
			skb = FUNC14(&rx_ctrl->napi);
			if (FUNC24(!skb))
				break;
		}
		FUNC20(skb);

		flags = FUNC18(cmpl->flags);
		len = FUNC19(cmpl->length);
		totlen = len;
		nvecs = 1;

		/* Check all the completions for this frame.
		 * busy-wait doesn't help much, break here.
		 */
		if (FUNC0(unmap_q->type) &&
		    (flags & BNA_CQ_EF_EOP) == 0) {
			pi = ccb->producer_index;
			do {
				FUNC3(pi, ccb->q_depth);
				next_cmpl = &cq[pi];

				if (!next_cmpl->valid)
					break;
				/* The 'valid' field is set by the adapter, only
				 * after writing the other fields of completion
				 * entry. Hence, do not load other fields of
				 * completion entry *before* the 'valid' is
				 * loaded. Adding the rmb() here prevents the
				 * compiler and/or CPU from reordering the reads
				 * which would potentially result in reading
				 * stale values in completion entry.
				 */
				FUNC21();

				len = FUNC19(next_cmpl->length);
				flags = FUNC18(next_cmpl->flags);

				nvecs++;
				totlen += len;
			} while ((flags & BNA_CQ_EF_EOP) == 0);

			if (!next_cmpl->valid)
				break;
		}
		packets++;

		/* TODO: BNA_CQ_EF_LOCAL ? */
		if (FUNC24(flags & (BNA_CQ_EF_MAC_ERROR |
						BNA_CQ_EF_FCS_ERROR |
						BNA_CQ_EF_TOO_LONG))) {
			FUNC8(bnad, rcb, sop_ci, nvecs);
			rcb->rxq->rx_packets_with_error++;

			goto next;
		}

		if (FUNC1(unmap_q->type))
			FUNC9(bnad, skb, unmap, len);
		else
			FUNC10(ccb, skb, nvecs);

		rcb->rxq->rx_packets++;
		rcb->rxq->rx_bytes += totlen;
		ccb->bytes_per_intr += totlen;

		masked_flags = flags & flags_cksum_prot_mask;

		if (FUNC13
		    ((bnad->netdev->features & NETIF_F_RXCSUM) &&
		     ((masked_flags == flags_tcp4) ||
		      (masked_flags == flags_udp4) ||
		      (masked_flags == flags_tcp6) ||
		      (masked_flags == flags_udp6))))
			skb->ip_summed = CHECKSUM_UNNECESSARY;
		else
			FUNC22(skb);

		if ((flags & BNA_CQ_EF_VLAN) &&
		    (bnad->netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
			FUNC5(skb, FUNC12(ETH_P_8021Q), FUNC19(cmpl->vlan_tag));

		if (FUNC1(unmap_q->type))
			FUNC17(skb);
		else
			FUNC16(&rx_ctrl->napi);

next:
		FUNC2(rcb->consumer_index, nvecs, rcb->q_depth);
		for (vec = 0; vec < nvecs; vec++) {
			cmpl = &cq[ccb->producer_index];
			cmpl->valid = 0;
			FUNC3(ccb->producer_index, ccb->q_depth);
		}
	}

	FUNC15(&rx_ctrl->napi, false);
	if (FUNC13(FUNC23(BNAD_RXQ_STARTED, &ccb->rcb[0]->flags)))
		FUNC6(ccb->i_dbell, packets);

	FUNC11(bnad, ccb->rcb[0]);
	if (ccb->rcb[1])
		FUNC11(bnad, ccb->rcb[1]);

	return packets;
}