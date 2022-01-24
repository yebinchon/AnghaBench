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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct hinic_sge {int dummy; } ;
struct hinic_rxq {int /*<<< orphan*/  rq; int /*<<< orphan*/  netdev; } ;
struct hinic_rq_wqe {int dummy; } ;
struct hinic_dev {unsigned int rx_weight; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_RQ_WQE_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct hinic_rq_wqe* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hinic_rq_wqe*,struct hinic_sge*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hinic_rq_wqe*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct hinic_sge*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct hinic_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (struct hinic_rxq*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct hinic_rxq*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct hinic_rxq *rxq)
{
	struct hinic_dev *nic_dev = FUNC7(rxq->netdev);
	struct hinic_rq_wqe *rq_wqe;
	unsigned int free_wqebbs;
	struct hinic_sge sge;
	dma_addr_t dma_addr;
	struct sk_buff *skb;
	u16 prod_idx;
	int i;

	free_wqebbs = FUNC0(rxq->rq);

	/* Limit the allocation chunks */
	if (free_wqebbs > nic_dev->rx_weight)
		free_wqebbs = nic_dev->rx_weight;

	for (i = 0; i < free_wqebbs; i++) {
		skb = FUNC8(rxq, &dma_addr);
		if (!skb) {
			FUNC6(rxq->netdev, "Failed to alloc Rx skb\n");
			goto skb_out;
		}

		FUNC5(&sge, dma_addr, skb->len);

		rq_wqe = FUNC1(rxq->rq, HINIC_RQ_WQE_SIZE,
					  &prod_idx);
		if (!rq_wqe) {
			FUNC9(rxq, skb, dma_addr);
			goto skb_out;
		}

		FUNC2(rxq->rq, prod_idx, rq_wqe, &sge);

		FUNC4(rxq->rq, prod_idx, rq_wqe, skb);
	}

skb_out:
	if (i) {
		FUNC10();  /* write all the wqes before update PI */

		FUNC3(rxq->rq, prod_idx);
	}

	return i;
}