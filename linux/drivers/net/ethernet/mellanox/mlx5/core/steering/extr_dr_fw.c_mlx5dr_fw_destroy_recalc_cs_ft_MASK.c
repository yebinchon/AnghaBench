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
struct mlx5dr_fw_recalc_cs_ft {int /*<<< orphan*/  table_id; int /*<<< orphan*/  group_id; int /*<<< orphan*/  modify_hdr_id; } ;
struct mlx5dr_domain {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_FLOW_TABLE_TYPE_FDB ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5dr_fw_recalc_cs_ft*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct mlx5dr_domain *dmn,
				    struct mlx5dr_fw_recalc_cs_ft *recalc_cs_ft)
{
	FUNC2(dmn->mdev,
					MLX5_FLOW_TABLE_TYPE_FDB,
					recalc_cs_ft->table_id);
	FUNC1(dmn->mdev, recalc_cs_ft->modify_hdr_id);
	FUNC3(dmn->mdev,
				      MLX5_FLOW_TABLE_TYPE_FDB,
				      recalc_cs_ft->table_id,
				      recalc_cs_ft->group_id);
	FUNC4(dmn->mdev,
				      recalc_cs_ft->table_id,
				      MLX5_FLOW_TABLE_TYPE_FDB);

	FUNC0(recalc_cs_ft);
}