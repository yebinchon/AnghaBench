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
struct mlx5_geneve {int /*<<< orphan*/  sync_lock; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mlx5_geneve* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mlx5_geneve* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct mlx5_geneve *FUNC3(struct mlx5_core_dev *mdev)
{
	struct mlx5_geneve *geneve =
		FUNC1(sizeof(*geneve), GFP_KERNEL);

	if (!geneve)
		return FUNC0(-ENOMEM);
	geneve->mdev = mdev;
	FUNC2(&geneve->sync_lock);

	return geneve;
}