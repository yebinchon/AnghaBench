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
struct hinic_wq {int wqebb_size; int max_wqe_size; int /*<<< orphan*/ * shadow_wqe; int /*<<< orphan*/ * shadow_idx; } ;
struct hinic_hw_wqe {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int) ; 
 int FUNC1 (struct hinic_wq*,struct hinic_hw_wqe*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_wq*,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hinic_wq*,struct hinic_hw_wqe*) ; 

void FUNC4(struct hinic_wq *wq, struct hinic_hw_wqe *wqe,
		     unsigned int wqe_size)
{
	int curr_pg, num_wqebbs;
	void *shadow_addr;
	u16 prod_idx;

	if (FUNC3(wq, wqe)) {
		curr_pg = FUNC1(wq, wqe);

		prod_idx = wq->shadow_idx[curr_pg];
		num_wqebbs = FUNC0(wqe_size, wq->wqebb_size) / wq->wqebb_size;
		shadow_addr = &wq->shadow_wqe[curr_pg * wq->max_wqe_size];

		FUNC2(wq, shadow_addr, num_wqebbs, prod_idx);
	}
}