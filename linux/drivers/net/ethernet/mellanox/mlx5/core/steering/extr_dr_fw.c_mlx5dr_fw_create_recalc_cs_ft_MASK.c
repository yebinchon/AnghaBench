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
typedef  scalar_t__ u64 ;
typedef  void* u32 ;
struct mlx5dr_fw_recalc_cs_ft {void* group_id; void* table_id; scalar_t__ rx_icm_addr; void* modify_hdr_id; } ;
struct TYPE_3__ {scalar_t__ max_ft_level; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;
struct mlx5dr_domain {int /*<<< orphan*/  mdev; TYPE_2__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5_ACTION_IN_FIELD_OUT_IP_TTL ; 
 int /*<<< orphan*/  MLX5_ACTION_TYPE_ADD ; 
 int /*<<< orphan*/  MLX5_FLOW_TABLE_TYPE_FDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  action_type ; 
 int /*<<< orphan*/  field ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_fw_recalc_cs_ft*) ; 
 struct mlx5dr_fw_recalc_cs_ft* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,void**) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void**) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int,scalar_t__*,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5dr_domain*,char*,int) ; 
 int /*<<< orphan*/  set_action_in ; 

struct mlx5dr_fw_recalc_cs_ft *
FUNC11(struct mlx5dr_domain *dmn, u32 vport_num)
{
	struct mlx5dr_fw_recalc_cs_ft *recalc_cs_ft;
	u32 table_id, group_id, modify_hdr_id;
	u64 rx_icm_addr, modify_ttl_action;
	int ret;

	recalc_cs_ft = FUNC2(sizeof(*recalc_cs_ft), GFP_KERNEL);
	if (!recalc_cs_ft)
		return NULL;

	ret = FUNC5(dmn->mdev, MLX5_FLOW_TABLE_TYPE_FDB,
					   0, 0, dmn->info.caps.max_ft_level - 1,
					   false, true, &rx_icm_addr, &table_id);
	if (ret) {
		FUNC10(dmn, "Failed creating TTL W/A FW flow table %d\n", ret);
		goto free_ttl_tbl;
	}

	ret = FUNC4(dmn->mdev,
						 MLX5_FLOW_TABLE_TYPE_FDB,
						 table_id, &group_id);
	if (ret) {
		FUNC10(dmn, "Failed creating TTL W/A FW flow group %d\n", ret);
		goto destroy_flow_table;
	}

	/* Modify TTL action by adding zero to trigger CS recalculation */
	modify_ttl_action = 0;
	FUNC0(set_action_in, &modify_ttl_action, action_type, MLX5_ACTION_TYPE_ADD);
	FUNC0(set_action_in, &modify_ttl_action, field, MLX5_ACTION_IN_FIELD_OUT_IP_TTL);

	ret = FUNC3(dmn->mdev, MLX5_FLOW_TABLE_TYPE_FDB, 1,
					     &modify_ttl_action,
					     &modify_hdr_id);
	if (ret) {
		FUNC10(dmn, "Failed modify header TTL %d\n", ret);
		goto destroy_flow_group;
	}

	ret = FUNC9(dmn->mdev,
						  MLX5_FLOW_TABLE_TYPE_FDB,
						  table_id, group_id, modify_hdr_id,
						  vport_num);
	if (ret) {
		FUNC10(dmn, "Failed setting TTL W/A flow table entry %d\n", ret);
		goto dealloc_modify_header;
	}

	recalc_cs_ft->modify_hdr_id = modify_hdr_id;
	recalc_cs_ft->rx_icm_addr = rx_icm_addr;
	recalc_cs_ft->table_id = table_id;
	recalc_cs_ft->group_id = group_id;

	return recalc_cs_ft;

dealloc_modify_header:
	FUNC6(dmn->mdev, modify_hdr_id);
destroy_flow_group:
	FUNC7(dmn->mdev,
				      MLX5_FLOW_TABLE_TYPE_FDB,
				      table_id, group_id);
destroy_flow_table:
	FUNC8(dmn->mdev, table_id, MLX5_FLOW_TABLE_TYPE_FDB);
free_ttl_tbl:
	FUNC1(recalc_cs_ft);
	return NULL;
}