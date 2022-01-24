#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx5_flow_steering {TYPE_1__* fdb_root_ns; struct mlx5_flow_namespace** fdb_sub_ns; } ;
struct mlx5_flow_namespace {int dummy; } ;
typedef  struct mlx5_flow_namespace fs_prio ;
struct TYPE_4__ {struct mlx5_flow_namespace ns; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FDB_BYPASS_PATH ; 
 int /*<<< orphan*/  FDB_FAST_PATH ; 
 int FDB_MAX_CHAIN ; 
 int FDB_MAX_PRIO ; 
 int FDB_SLOW_PATH ; 
 int /*<<< orphan*/  FS_FT_FDB ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mlx5_flow_namespace*) ; 
 int /*<<< orphan*/  MLX5_FLOW_TABLE_MISS_ACTION_DEF ; 
 int FUNC1 (struct mlx5_flow_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (struct mlx5_flow_steering*,int /*<<< orphan*/ ) ; 
 struct mlx5_flow_namespace* FUNC4 (struct mlx5_flow_namespace*,int /*<<< orphan*/ ) ; 
 struct mlx5_flow_namespace* FUNC5 (struct mlx5_flow_namespace*,int,int) ; 
 struct mlx5_flow_namespace* FUNC6 (struct mlx5_flow_namespace*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_flow_namespace**) ; 
 struct mlx5_flow_namespace** FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct mlx5_flow_steering *steering)
{
	struct mlx5_flow_namespace *ns;
	struct fs_prio *maj_prio;
	struct fs_prio *min_prio;
	int levels;
	int chain;
	int prio;
	int err;

	steering->fdb_root_ns = FUNC3(steering, FS_FT_FDB);
	if (!steering->fdb_root_ns)
		return -ENOMEM;

	steering->fdb_sub_ns = FUNC8(sizeof(steering->fdb_sub_ns) *
				       (FDB_MAX_CHAIN + 1), GFP_KERNEL);
	if (!steering->fdb_sub_ns)
		return -ENOMEM;

	maj_prio = FUNC5(&steering->fdb_root_ns->ns, FDB_BYPASS_PATH,
				  1);
	if (FUNC0(maj_prio)) {
		err = FUNC1(maj_prio);
		goto out_err;
	}

	levels = 2 * FDB_MAX_PRIO * (FDB_MAX_CHAIN + 1);
	maj_prio = FUNC6(&steering->fdb_root_ns->ns,
					  FDB_FAST_PATH,
					  levels);
	if (FUNC0(maj_prio)) {
		err = FUNC1(maj_prio);
		goto out_err;
	}

	for (chain = 0; chain <= FDB_MAX_CHAIN; chain++) {
		ns = FUNC4(maj_prio, MLX5_FLOW_TABLE_MISS_ACTION_DEF);
		if (FUNC0(ns)) {
			err = FUNC1(ns);
			goto out_err;
		}

		for (prio = 0; prio < FDB_MAX_PRIO * (chain + 1); prio++) {
			min_prio = FUNC5(ns, prio, 2);
			if (FUNC0(min_prio)) {
				err = FUNC1(min_prio);
				goto out_err;
			}
		}

		steering->fdb_sub_ns[chain] = ns;
	}

	maj_prio = FUNC5(&steering->fdb_root_ns->ns, FDB_SLOW_PATH, 1);
	if (FUNC0(maj_prio)) {
		err = FUNC1(maj_prio);
		goto out_err;
	}

	FUNC9(steering->fdb_root_ns);
	return 0;

out_err:
	FUNC2(steering->fdb_root_ns);
	FUNC7(steering->fdb_sub_ns);
	steering->fdb_sub_ns = NULL;
	steering->fdb_root_ns = NULL;
	return err;
}