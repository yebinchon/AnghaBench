#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct iwl_trans_pcie {int rx_page_order; struct iwl_rxq* rxq; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct iwl_rxq {int read; int /*<<< orphan*/  lock; struct iwl_rx_mem_buffer** queue; } ;
struct iwl_rx_mem_buffer {int /*<<< orphan*/  page; int /*<<< orphan*/  page_dma; } ;
struct iwl_fw_error_dump_rb {int /*<<< orphan*/  data; void* index; } ;
struct iwl_fw_error_dump_data {scalar_t__ data; void* len; void* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int IWL_FW_ERROR_DUMP_RB ; 
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int PAGE_SIZE ; 
 int RX_QUEUE_MASK ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct iwl_fw_error_dump_data* FUNC4 (struct iwl_fw_error_dump_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,struct iwl_rxq*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC11(struct iwl_trans *trans,
				   struct iwl_fw_error_dump_data **data,
				   int allocated_rb_nums)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	int max_len = PAGE_SIZE << trans_pcie->rx_page_order;
	/* Dump RBs is supported only for pre-9000 devices (1 queue) */
	struct iwl_rxq *rxq = &trans_pcie->rxq[0];
	u32 i, r, j, rb_len = 0;

	FUNC9(&rxq->lock);

	r = FUNC6(FUNC5(trans, rxq)) & 0x0FFF;

	for (i = rxq->read, j = 0;
	     i != r && j < allocated_rb_nums;
	     i = (i + 1) & RX_QUEUE_MASK, j++) {
		struct iwl_rx_mem_buffer *rxb = rxq->queue[i];
		struct iwl_fw_error_dump_rb *rb;

		FUNC3(trans->dev, rxb->page_dma, max_len,
			       DMA_FROM_DEVICE);

		rb_len += sizeof(**data) + sizeof(*rb) + max_len;

		(*data)->type = FUNC1(IWL_FW_ERROR_DUMP_RB);
		(*data)->len = FUNC1(sizeof(*rb) + max_len);
		rb = (void *)(*data)->data;
		rb->index = FUNC1(i);
		FUNC7(rb->data, FUNC8(rxb->page), max_len);
		/* remap the page for the free benefit */
		rxb->page_dma = FUNC2(trans->dev, rxb->page, 0,
						     max_len,
						     DMA_FROM_DEVICE);

		*data = FUNC4(*data);
	}

	FUNC10(&rxq->lock);

	return rb_len;
}