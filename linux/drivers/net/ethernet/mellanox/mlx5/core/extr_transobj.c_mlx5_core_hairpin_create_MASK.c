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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_hairpin_params {int num_channels; } ;
struct mlx5_hairpin {int num_channels; void* rqn; void* sqn; struct mlx5_core_dev* peer_mdev; struct mlx5_core_dev* func_mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlx5_hairpin* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_hairpin*) ; 
 struct mlx5_hairpin* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_hairpin*,struct mlx5_hairpin_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_hairpin*) ; 
 int FUNC5 (struct mlx5_hairpin*) ; 

struct mlx5_hairpin *
FUNC6(struct mlx5_core_dev *func_mdev,
			 struct mlx5_core_dev *peer_mdev,
			 struct mlx5_hairpin_params *params)
{
	struct mlx5_hairpin *hp;
	int size, err;

	size = sizeof(*hp) + params->num_channels * 2 * sizeof(u32);
	hp = FUNC2(size, GFP_KERNEL);
	if (!hp)
		return FUNC0(-ENOMEM);

	hp->func_mdev = func_mdev;
	hp->peer_mdev = peer_mdev;
	hp->num_channels = params->num_channels;

	hp->rqn = (void *)hp + sizeof(*hp);
	hp->sqn = hp->rqn + params->num_channels;

	/* alloc and pair func --> peer hairpin */
	err = FUNC3(hp, params);
	if (err)
		goto err_create_queues;

	err = FUNC5(hp);
	if (err)
		goto err_pair_queues;

	return hp;

err_pair_queues:
	FUNC4(hp);
err_create_queues:
	FUNC1(hp);
	return FUNC0(err);
}