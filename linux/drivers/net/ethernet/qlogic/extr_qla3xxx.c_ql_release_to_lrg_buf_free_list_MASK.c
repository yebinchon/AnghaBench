#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ql_rcv_buf_cb {void* buf_phy_addr_high; void* buf_phy_addr_low; TYPE_1__* skb; struct ql_rcv_buf_cb* next; } ;
struct ql3_adapter {int /*<<< orphan*/  lrg_buf_free_count; scalar_t__ lrg_buffer_len; int /*<<< orphan*/  lrg_buf_skb_check; int /*<<< orphan*/  ndev; int /*<<< orphan*/  pdev; struct ql_rcv_buf_cb* lrg_buf_free_tail; struct ql_rcv_buf_cb* lrg_buf_free_head; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ QL_HEADER_SPACE ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_rcv_buf_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_rcv_buf_cb*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  mapaddr ; 
 int /*<<< orphan*/  maplen ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct ql3_adapter *qdev,
					    struct ql_rcv_buf_cb *lrg_buf_cb)
{
	dma_addr_t map;
	int err;
	lrg_buf_cb->next = NULL;

	if (qdev->lrg_buf_free_tail == NULL) {	/* The list is empty  */
		qdev->lrg_buf_free_head = qdev->lrg_buf_free_tail = lrg_buf_cb;
	} else {
		qdev->lrg_buf_free_tail->next = lrg_buf_cb;
		qdev->lrg_buf_free_tail = lrg_buf_cb;
	}

	if (!lrg_buf_cb->skb) {
		lrg_buf_cb->skb = FUNC6(qdev->ndev,
						   qdev->lrg_buffer_len);
		if (FUNC11(!lrg_buf_cb->skb)) {
			qdev->lrg_buf_skb_check++;
		} else {
			/*
			 * We save some space to copy the ethhdr from first
			 * buffer
			 */
			FUNC10(lrg_buf_cb->skb, QL_HEADER_SPACE);
			map = FUNC9(qdev->pdev,
					     lrg_buf_cb->skb->data,
					     qdev->lrg_buffer_len -
					     QL_HEADER_SPACE,
					     PCI_DMA_FROMDEVICE);
			err = FUNC8(qdev->pdev, map);
			if (err) {
				FUNC7(qdev->ndev,
					   "PCI mapping failed with error: %d\n",
					   err);
				FUNC3(lrg_buf_cb->skb);
				lrg_buf_cb->skb = NULL;

				qdev->lrg_buf_skb_check++;
				return;
			}

			lrg_buf_cb->buf_phy_addr_low =
			    FUNC2(FUNC0(map));
			lrg_buf_cb->buf_phy_addr_high =
			    FUNC2(FUNC1(map));
			FUNC4(lrg_buf_cb, mapaddr, map);
			FUNC5(lrg_buf_cb, maplen,
					  qdev->lrg_buffer_len -
					  QL_HEADER_SPACE);
		}
	}

	qdev->lrg_buf_free_count++;
}