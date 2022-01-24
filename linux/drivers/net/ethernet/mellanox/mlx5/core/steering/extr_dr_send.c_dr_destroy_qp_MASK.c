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
struct TYPE_2__ {struct mlx5dr_qp* wqe_head; } ;
struct mlx5dr_qp {int /*<<< orphan*/  wq_ctrl; TYPE_1__ sq; int /*<<< orphan*/  mqp; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5dr_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mlx5_core_dev *mdev,
			  struct mlx5dr_qp *dr_qp)
{
	FUNC1(mdev, &dr_qp->mqp);
	FUNC0(dr_qp->sq.wqe_head);
	FUNC2(&dr_qp->wq_ctrl);
	FUNC0(dr_qp);
}