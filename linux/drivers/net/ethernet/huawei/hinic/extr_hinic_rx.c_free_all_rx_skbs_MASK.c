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
struct hinic_sge {int dummy; } ;
struct hinic_rxq {struct hinic_rq* rq; } ;
struct hinic_rq {int /*<<< orphan*/ * saved_skb; int /*<<< orphan*/  wq; } ;
struct hinic_hw_wqe {int /*<<< orphan*/  rq_wqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_RQ_WQE_SIZE ; 
 scalar_t__ FUNC0 (struct hinic_hw_wqe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hinic_hw_wqe* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_rq*,int /*<<< orphan*/ *,size_t,struct hinic_sge*) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_sge*) ; 
 int /*<<< orphan*/  FUNC5 (struct hinic_rxq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hinic_rxq *rxq)
{
	struct hinic_rq *rq = rxq->rq;
	struct hinic_hw_wqe *hw_wqe;
	struct hinic_sge sge;
	u16 ci;

	while ((hw_wqe = FUNC2(rq->wq, HINIC_RQ_WQE_SIZE, &ci))) {
		if (FUNC0(hw_wqe))
			break;

		FUNC3(rq, &hw_wqe->rq_wqe, ci, &sge);

		FUNC1(rq->wq, HINIC_RQ_WQE_SIZE);

		FUNC5(rxq, rq->saved_skb[ci], FUNC4(&sge));
	}
}