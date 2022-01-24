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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct ql_rcv_buf_cb {int index; void* buf_phy_addr_high; void* buf_phy_addr_low; struct sk_buff* skb; } ;
struct ql3_adapter {int num_large_buffers; int lrg_buffer_len; int /*<<< orphan*/  ndev; int /*<<< orphan*/  pdev; struct ql_rcv_buf_cb* lrg_buf; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int QL_HEADER_SPACE ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_rcv_buf_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_rcv_buf_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mapaddr ; 
 int /*<<< orphan*/  maplen ; 
 int /*<<< orphan*/  FUNC6 (struct ql_rcv_buf_cb*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct ql3_adapter *qdev)
{
	int i;
	struct ql_rcv_buf_cb *lrg_buf_cb;
	struct sk_buff *skb;
	dma_addr_t map;
	int err;

	for (i = 0; i < qdev->num_large_buffers; i++) {
		skb = FUNC7(qdev->ndev,
				       qdev->lrg_buffer_len);
		if (FUNC13(!skb)) {
			/* Better luck next round */
			FUNC8(qdev->ndev,
				   "large buff alloc failed for %d bytes at index %d\n",
				   qdev->lrg_buffer_len * 2, i);
			FUNC11(qdev);
			return -ENOMEM;
		} else {

			lrg_buf_cb = &qdev->lrg_buf[i];
			FUNC6(lrg_buf_cb, 0, sizeof(struct ql_rcv_buf_cb));
			lrg_buf_cb->index = i;
			lrg_buf_cb->skb = skb;
			/*
			 * We save some space to copy the ethhdr from first
			 * buffer
			 */
			FUNC12(skb, QL_HEADER_SPACE);
			map = FUNC10(qdev->pdev,
					     skb->data,
					     qdev->lrg_buffer_len -
					     QL_HEADER_SPACE,
					     PCI_DMA_FROMDEVICE);

			err = FUNC9(qdev->pdev, map);
			if (err) {
				FUNC8(qdev->ndev,
					   "PCI mapping failed with error: %d\n",
					   err);
				FUNC3(skb);
				FUNC11(qdev);
				return -ENOMEM;
			}

			FUNC4(lrg_buf_cb, mapaddr, map);
			FUNC5(lrg_buf_cb, maplen,
					  qdev->lrg_buffer_len -
					  QL_HEADER_SPACE);
			lrg_buf_cb->buf_phy_addr_low =
			    FUNC2(FUNC0(map));
			lrg_buf_cb->buf_phy_addr_high =
			    FUNC2(FUNC1(map));
		}
	}
	return 0;
}