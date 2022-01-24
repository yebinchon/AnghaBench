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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct hinic_rq_wqe {int dummy; } ;
struct hinic_rq_cqe {int /*<<< orphan*/  status; } ;
struct hinic_rq {struct sk_buff** saved_skb; struct hinic_rq_cqe** cqe; int /*<<< orphan*/  wq; } ;
struct hinic_hw_wqe {struct hinic_rq_wqe rq_wqe; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hinic_hw_wqe*) ; 
 int /*<<< orphan*/  RXDONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct hinic_hw_wqe* FUNC3 (int /*<<< orphan*/ ,unsigned int,size_t*) ; 

struct hinic_rq_wqe *FUNC4(struct hinic_rq *rq,
				       unsigned int wqe_size,
				       struct sk_buff **skb, u16 *cons_idx)
{
	struct hinic_hw_wqe *hw_wqe;
	struct hinic_rq_cqe *cqe;
	int rx_done;
	u32 status;

	hw_wqe = FUNC3(rq->wq, wqe_size, cons_idx);
	if (FUNC1(hw_wqe))
		return NULL;

	cqe = rq->cqe[*cons_idx];

	status = FUNC2(cqe->status);

	rx_done = FUNC0(status, RXDONE);
	if (!rx_done)
		return NULL;

	*skb = rq->saved_skb[*cons_idx];

	return &hw_wqe->rq_wqe;
}