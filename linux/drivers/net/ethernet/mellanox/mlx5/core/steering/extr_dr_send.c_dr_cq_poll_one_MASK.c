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
struct mlx5dr_cq {int /*<<< orphan*/  wq; } ;
struct mlx5_cqe64 {int dummy; } ;

/* Variables and functions */
 int CQ_EMPTY ; 
 int FUNC0 (struct mlx5dr_cq*,struct mlx5_cqe64*) ; 
 struct mlx5_cqe64* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mlx5dr_cq *dr_cq)
{
	struct mlx5_cqe64 *cqe64;
	int err;

	cqe64 = FUNC1(&dr_cq->wq);
	if (!cqe64)
		return CQ_EMPTY;

	FUNC2(&dr_cq->wq);
	err = FUNC0(dr_cq, cqe64);
	FUNC3(&dr_cq->wq);

	return err;
}