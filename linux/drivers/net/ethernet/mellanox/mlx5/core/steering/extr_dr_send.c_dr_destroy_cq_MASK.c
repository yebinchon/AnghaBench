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
struct mlx5dr_cq {int /*<<< orphan*/  wq_ctrl; int /*<<< orphan*/  mcq; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5dr_cq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mlx5_core_dev *mdev, struct mlx5dr_cq *cq)
{
	FUNC1(mdev, &cq->mcq);
	FUNC2(&cq->wq_ctrl);
	FUNC0(cq);
}