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
struct mlx5_mpfs {int size; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct mlx5_mpfs* mpfs; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_mpfs*) ; 
 struct mlx5_mpfs* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_max_l2_table ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct mlx5_core_dev *dev)
{
	int l2table_size = 1 << FUNC0(dev, log_max_l2_table);
	struct mlx5_mpfs *mpfs;

	if (!FUNC1(dev))
		return 0;

	mpfs = FUNC4(sizeof(*mpfs), GFP_KERNEL);
	if (!mpfs)
		return -ENOMEM;

	FUNC5(&mpfs->lock);
	mpfs->size   = l2table_size;
	mpfs->bitmap = FUNC2(l2table_size, GFP_KERNEL);
	if (!mpfs->bitmap) {
		FUNC3(mpfs);
		return -ENOMEM;
	}

	dev->priv.mpfs = mpfs;
	return 0;
}