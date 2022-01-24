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
struct mlx5_mpfs {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  hash; } ;
struct TYPE_2__ {struct mlx5_mpfs* mpfs; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_mpfs*) ; 

void FUNC5(struct mlx5_core_dev *dev)
{
	struct mlx5_mpfs *mpfs = dev->priv.mpfs;

	if (!FUNC0(dev))
		return;

	FUNC1(!FUNC3(mpfs->hash));
	FUNC2(mpfs->bitmap);
	FUNC4(mpfs);
}