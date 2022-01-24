#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  reserved_cqs; scalar_t__ num_cqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cq_table {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  tree; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {struct mlx4_cq_table cq_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx4_dev*) ; 
 TYPE_2__* FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mlx4_dev *dev)
{
	struct mlx4_cq_table *cq_table = &FUNC3(dev)->cq_table;
	int err;

	FUNC4(&cq_table->lock);
	FUNC0(&cq_table->tree, GFP_ATOMIC);
	if (FUNC2(dev))
		return 0;

	err = FUNC1(&cq_table->bitmap, dev->caps.num_cqs,
			       dev->caps.num_cqs - 1, dev->caps.reserved_cqs, 0);
	if (err)
		return err;

	return 0;
}