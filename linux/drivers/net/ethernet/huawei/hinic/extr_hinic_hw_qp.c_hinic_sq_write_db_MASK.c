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
typedef  int u16 ;
struct hinic_wq {int wqebb_size; } ;
struct hinic_sq {struct hinic_wq* wq; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_sq*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_sq*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct hinic_sq *sq, u16 prod_idx, unsigned int wqe_size,
		       unsigned int cos)
{
	struct hinic_wq *wq = sq->wq;

	/* increment prod_idx to the next */
	prod_idx += FUNC0(wqe_size, wq->wqebb_size) / wq->wqebb_size;

	FUNC3();  /* Write all before the doorbell */

	FUNC4(FUNC2(sq, prod_idx, cos), FUNC1(sq, prod_idx));
}