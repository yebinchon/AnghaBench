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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; } ;
struct qede_rx_queue {int /*<<< orphan*/  data_direction; int /*<<< orphan*/  dev; struct qede_agg_info* tpa_info; } ;
struct qede_fastpath {struct qede_rx_queue* rxq; } ;
struct qede_dev {int /*<<< orphan*/  ndev; } ;
struct TYPE_3__ {scalar_t__ page_offset; int /*<<< orphan*/  mapping; } ;
struct qede_agg_info {scalar_t__ state; scalar_t__ frag_id; int tpa_start_fail; struct sk_buff* skb; TYPE_1__ buffer; int /*<<< orphan*/  vlan_tag; } ;
struct eth_fast_path_rx_tpa_end_cqe {size_t tpa_agg_index; scalar_t__ num_of_bds; scalar_t__ num_of_coalesced_segs; scalar_t__ total_packet_len; scalar_t__* len_list; } ;
struct TYPE_4__ {scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*,...) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ PAGE_SIZE ; 
 void* QEDE_AGG_STATE_NONE ; 
 scalar_t__ QEDE_AGG_STATE_START ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct qede_dev*,struct qede_rx_queue*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct qede_dev*,struct qede_fastpath*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qede_rx_queue*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct qede_dev *edev,
			struct qede_fastpath *fp,
			struct eth_fast_path_rx_tpa_end_cqe *cqe)
{
	struct qede_rx_queue *rxq = fp->rxq;
	struct qede_agg_info *tpa_info;
	struct sk_buff *skb;
	int i;

	tpa_info = &rxq->tpa_info[cqe->tpa_agg_index];
	skb = tpa_info->skb;

	if (tpa_info->buffer.page_offset == PAGE_SIZE)
		FUNC3(rxq->dev, tpa_info->buffer.mapping,
			       PAGE_SIZE, rxq->data_direction);

	for (i = 0; cqe->len_list[i]; i++)
		FUNC6(edev, rxq, cqe->tpa_agg_index,
				   FUNC5(cqe->len_list[i]));
	if (FUNC9(i > 1))
		FUNC0(edev,
		       "Strange - TPA emd with more than a single len_list entry\n");

	if (FUNC9(tpa_info->state != QEDE_AGG_STATE_START))
		goto err;

	/* Sanity */
	if (FUNC9(cqe->num_of_bds != tpa_info->frag_id + 1))
		FUNC0(edev,
		       "Strange - TPA had %02x BDs, but SKB has only %d frags\n",
		       cqe->num_of_bds, tpa_info->frag_id);
	if (FUNC9(skb->len != FUNC5(cqe->total_packet_len)))
		FUNC0(edev,
		       "Strange - total packet len [cqe] is %4x but SKB has len %04x\n",
		       FUNC5(cqe->total_packet_len), skb->len);

	/* Finalize the SKB */
	skb->protocol = FUNC4(skb, edev->ndev);
	skb->ip_summed = CHECKSUM_UNNECESSARY;

	/* tcp_gro_complete() will copy NAPI_GRO_CB(skb)->count
	 * to skb_shinfo(skb)->gso_segs
	 */
	FUNC1(skb)->count = FUNC5(cqe->num_of_coalesced_segs);

	FUNC7(edev, fp, skb, tpa_info->vlan_tag);

	tpa_info->state = QEDE_AGG_STATE_NONE;

	return 1;
err:
	tpa_info->state = QEDE_AGG_STATE_NONE;

	if (tpa_info->tpa_start_fail) {
		FUNC8(rxq, &tpa_info->buffer);
		tpa_info->tpa_start_fail = false;
	}

	FUNC2(tpa_info->skb);
	tpa_info->skb = NULL;
	return 0;
}