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
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct hinic_wq {unsigned int wqebb_size; } ;
struct hinic_rq_wqe {int dummy; } ;
struct hinic_rq {struct sk_buff** saved_skb; struct hinic_wq* wq; } ;
struct hinic_hw_wqe {struct hinic_rq_wqe rq_wqe; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 size_t FUNC1 (struct hinic_rq*,int /*<<< orphan*/ ) ; 
 struct hinic_hw_wqe* FUNC2 (struct hinic_wq*,size_t) ; 

struct hinic_rq_wqe *FUNC3(struct hinic_rq *rq,
					    unsigned int wqe_size,
					    struct sk_buff **skb,
					    u16 *cons_idx)
{
	struct hinic_wq *wq = rq->wq;
	struct hinic_hw_wqe *hw_wqe;
	unsigned int num_wqebbs;

	wqe_size = FUNC0(wqe_size, wq->wqebb_size);
	num_wqebbs = wqe_size / wq->wqebb_size;

	*cons_idx = FUNC1(rq, *cons_idx + num_wqebbs);

	*skb = rq->saved_skb[*cons_idx];

	hw_wqe = FUNC2(wq, *cons_idx);

	return &hw_wqe->rq_wqe;
}