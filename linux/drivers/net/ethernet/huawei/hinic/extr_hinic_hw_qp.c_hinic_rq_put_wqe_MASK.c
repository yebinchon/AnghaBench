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
struct hinic_rq_cqe {int /*<<< orphan*/  status; } ;
struct hinic_rq {int /*<<< orphan*/  wq; struct hinic_rq_cqe** cqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXDONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct hinic_rq *rq, u16 cons_idx,
		      unsigned int wqe_size)
{
	struct hinic_rq_cqe *cqe = rq->cqe[cons_idx];
	u32 status = FUNC1(cqe->status);

	status = FUNC0(status, RXDONE);

	/* Rx WQE size is 1 WQEBB, no wq shadow*/
	cqe->status = FUNC2(status);

	FUNC4();          /* clear done flag */

	FUNC3(rq->wq, wqe_size);
}