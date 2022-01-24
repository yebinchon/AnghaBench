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
typedef  scalar_t__ u16 ;
struct sw_rx_data {int /*<<< orphan*/  mapping; int /*<<< orphan*/  page_offset; } ;
struct qede_rx_queue {size_t sw_rx_cons; scalar_t__ rx_headroom; struct sw_rx_data* sw_rx_ring; struct qede_agg_info* tpa_info; } ;
struct qede_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mapping; int /*<<< orphan*/  page_offset; } ;
struct qede_agg_info {int tpa_start_fail; int vlan_tag; void* state; int /*<<< orphan*/  skb; scalar_t__ frag_id; TYPE_1__ buffer; } ;
struct TYPE_4__ {int flags; } ;
struct eth_fast_path_rx_tpa_start_cqe {size_t tpa_agg_index; int len_on_first_bd; int vlan_tag; int* ext_bd_len_list; int /*<<< orphan*/  rss_hash; int /*<<< orphan*/  bitfields; TYPE_2__ pars_flags; scalar_t__ placement_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,char*) ; 
 size_t NUM_RX_BDS_MAX ; 
 int PARSING_AND_ERR_FLAGS_TAG8021QEXIST_MASK ; 
 int PARSING_AND_ERR_FLAGS_TAG8021QEXIST_SHIFT ; 
 void* QEDE_AGG_STATE_ERROR ; 
 void* QEDE_AGG_STATE_START ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct qede_dev*,struct qede_rx_queue*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qede_rx_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct qede_dev*,int /*<<< orphan*/ ,struct eth_fast_path_rx_tpa_start_cqe*) ; 
 int /*<<< orphan*/  FUNC8 (struct qede_dev*,struct qede_rx_queue*,struct sw_rx_data*,int,scalar_t__,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct qede_dev *edev,
			   struct qede_rx_queue *rxq,
			   struct eth_fast_path_rx_tpa_start_cqe *cqe)
{
	struct qede_agg_info *tpa_info = &rxq->tpa_info[cqe->tpa_agg_index];
	struct sw_rx_data *sw_rx_data_cons;
	u16 pad;

	sw_rx_data_cons = &rxq->sw_rx_ring[rxq->sw_rx_cons & NUM_RX_BDS_MAX];
	pad = cqe->placement_offset + rxq->rx_headroom;

	tpa_info->skb = FUNC8(edev, rxq, sw_rx_data_cons,
					      FUNC2(cqe->len_on_first_bd),
					      pad, false);
	tpa_info->buffer.page_offset = sw_rx_data_cons->page_offset;
	tpa_info->buffer.mapping = sw_rx_data_cons->mapping;

	if (FUNC9(!tpa_info->skb)) {
		FUNC1(edev, "Failed to allocate SKB for gro\n");

		/* Consume from ring but do not produce since
		 * this might be used by FW still, it will be re-used
		 * at TPA end.
		 */
		tpa_info->tpa_start_fail = true;
		FUNC6(rxq);
		tpa_info->state = QEDE_AGG_STATE_ERROR;
		goto cons_buf;
	}

	tpa_info->frag_id = 0;
	tpa_info->state = QEDE_AGG_STATE_START;

	if ((FUNC2(cqe->pars_flags.flags) >>
	     PARSING_AND_ERR_FLAGS_TAG8021QEXIST_SHIFT) &
	    PARSING_AND_ERR_FLAGS_TAG8021QEXIST_MASK)
		tpa_info->vlan_tag = FUNC2(cqe->vlan_tag);
	else
		tpa_info->vlan_tag = 0;

	FUNC5(tpa_info->skb, cqe->bitfields, cqe->rss_hash);

	/* This is needed in order to enable forwarding support */
	FUNC7(edev, tpa_info->skb, cqe);

cons_buf: /* We still need to handle bd_len_list to consume buffers */
	if (FUNC3(cqe->ext_bd_len_list[0]))
		FUNC4(edev, rxq, cqe->tpa_agg_index,
				   FUNC2(cqe->ext_bd_len_list[0]));

	if (FUNC9(cqe->ext_bd_len_list[1])) {
		FUNC0(edev,
		       "Unlikely - got a TPA aggregation with more than one ext_bd_len_list entry in the TPA start\n");
		tpa_info->state = QEDE_AGG_STATE_ERROR;
	}
}