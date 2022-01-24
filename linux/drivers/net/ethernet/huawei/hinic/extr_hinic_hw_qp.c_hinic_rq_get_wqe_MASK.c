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
struct hinic_rq_wqe {int dummy; } ;
struct hinic_rq {int /*<<< orphan*/  wq; } ;
struct hinic_hw_wqe {struct hinic_rq_wqe rq_wqe; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hinic_hw_wqe*) ; 
 struct hinic_hw_wqe* FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 

struct hinic_rq_wqe *FUNC2(struct hinic_rq *rq,
				      unsigned int wqe_size, u16 *prod_idx)
{
	struct hinic_hw_wqe *hw_wqe = FUNC1(rq->wq, wqe_size,
						    prod_idx);

	if (FUNC0(hw_wqe))
		return NULL;

	return &hw_wqe->rq_wqe;
}