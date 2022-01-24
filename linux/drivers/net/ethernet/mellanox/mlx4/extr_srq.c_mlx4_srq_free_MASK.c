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
struct mlx4_srq_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct mlx4_srq {int /*<<< orphan*/  srqn; int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_srq_table srq_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct mlx4_dev *dev, struct mlx4_srq *srq)
{
	struct mlx4_srq_table *srq_table = &FUNC2(dev)->srq_table;
	int err;

	err = FUNC1(dev, NULL, srq->srqn);
	if (err)
		FUNC4(dev, "HW2SW_SRQ failed (%d) for SRQN %06x\n", err, srq->srqn);

	FUNC7(&srq_table->lock);
	FUNC5(&srq_table->tree, srq->srqn);
	FUNC8(&srq_table->lock);

	if (FUNC6(&srq->refcount))
		FUNC0(&srq->free);
	FUNC9(&srq->free);

	FUNC3(dev, srq->srqn);
}