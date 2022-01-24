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
struct mlx5dr_icm_pool {int /*<<< orphan*/  icm_mr_list; TYPE_2__* dmn; int /*<<< orphan*/  icm_type; int /*<<< orphan*/  max_log_chunk_sz; } ;
struct TYPE_3__ {int type; int length; size_t addr; int /*<<< orphan*/  obj_id; } ;
struct mlx5dr_icm_mr {size_t icm_start_addr; size_t used_length; TYPE_1__ dm; int /*<<< orphan*/  mr_list; int /*<<< orphan*/  mkey; struct mlx5dr_icm_pool* pool; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  enum mlx5_sw_icm_type { ____Placeholder_mlx5_sw_icm_type } mlx5_sw_icm_type ;
struct TYPE_4__ {int /*<<< orphan*/  pdn; struct mlx5_core_dev* mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX5_MKC_ACCESS_MODE_SW_ICM ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_icm_mr*) ; 
 struct mlx5dr_icm_mr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mlx5_core_dev*,int,int,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,int,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx5dr_icm_mr *
FUNC9(struct mlx5dr_icm_pool *pool,
		      enum mlx5_sw_icm_type type,
		      size_t align_base)
{
	struct mlx5_core_dev *mdev = pool->dmn->mdev;
	struct mlx5dr_icm_mr *icm_mr;
	size_t align_diff;
	int err;

	icm_mr = FUNC3(sizeof(*icm_mr), GFP_KERNEL);
	if (!icm_mr)
		return NULL;

	icm_mr->pool = pool;
	FUNC0(&icm_mr->mr_list);

	icm_mr->dm.type = type;

	/* 2^log_biggest_table * entry-size * double-for-alignment */
	icm_mr->dm.length = FUNC8(pool->max_log_chunk_sz,
							       pool->icm_type) * 2;

	err = FUNC5(mdev, icm_mr->dm.type, icm_mr->dm.length, 0,
				   &icm_mr->dm.addr, &icm_mr->dm.obj_id);
	if (err) {
		FUNC7(pool->dmn, "Failed to allocate SW ICM memory, err (%d)\n", err);
		goto free_icm_mr;
	}

	/* Register device memory */
	err = FUNC1(mdev, pool->dmn->pdn,
				    icm_mr->dm.length,
				    icm_mr->dm.addr,
				    MLX5_MKC_ACCESS_MODE_SW_ICM,
				    &icm_mr->mkey);
	if (err) {
		FUNC7(pool->dmn, "Failed to create SW ICM MKEY, err (%d)\n", err);
		goto free_dm;
	}

	icm_mr->icm_start_addr = icm_mr->dm.addr;

	/* align_base is always a power of 2 */
	align_diff = icm_mr->icm_start_addr & (align_base - 1);
	if (align_diff)
		icm_mr->used_length = align_base - align_diff;

	FUNC4(&icm_mr->mr_list, &pool->icm_mr_list);

	return icm_mr;

free_dm:
	FUNC6(mdev, icm_mr->dm.type, icm_mr->dm.length, 0,
			       icm_mr->dm.addr, icm_mr->dm.obj_id);
free_icm_mr:
	FUNC2(icm_mr);
	return NULL;
}