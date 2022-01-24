#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_wq_ll {int /*<<< orphan*/  head; } ;
struct TYPE_2__ {struct mlx5_wq_ll wq; } ;
struct mlx5e_rq {TYPE_1__ mpwqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_wq_ll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_wq_ll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_wq_ll*) ; 

__attribute__((used)) static void FUNC4(struct mlx5e_rq *rq, u8 n)
{
	struct mlx5_wq_ll *wq = &rq->mpwqe.wq;

	do {
		u16 next_wqe_index = FUNC1(wq, wq->head);

		FUNC2(wq, next_wqe_index);
	} while (--n);

	/* ensure wqes are visible to device before updating doorbell record */
	FUNC0();

	FUNC3(wq);
}