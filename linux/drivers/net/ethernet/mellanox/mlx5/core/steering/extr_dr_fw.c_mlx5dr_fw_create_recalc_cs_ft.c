
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef void* u32 ;
struct mlx5dr_fw_recalc_cs_ft {void* group_id; void* table_id; scalar_t__ rx_icm_addr; void* modify_hdr_id; } ;
struct TYPE_3__ {scalar_t__ max_ft_level; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;
struct mlx5dr_domain {int mdev; TYPE_2__ info; } ;


 int GFP_KERNEL ;
 int MLX5_ACTION_IN_FIELD_OUT_IP_TTL ;
 int MLX5_ACTION_TYPE_ADD ;
 int MLX5_FLOW_TABLE_TYPE_FDB ;
 int MLX5_SET (int ,scalar_t__*,int ,int ) ;
 int action_type ;
 int field ;
 int kfree (struct mlx5dr_fw_recalc_cs_ft*) ;
 struct mlx5dr_fw_recalc_cs_ft* kzalloc (int,int ) ;
 int mlx5dr_cmd_alloc_modify_header (int ,int ,int,scalar_t__*,void**) ;
 int mlx5dr_cmd_create_empty_flow_group (int ,int ,void*,void**) ;
 int mlx5dr_cmd_create_flow_table (int ,int ,int ,int ,scalar_t__,int,int,scalar_t__*,void**) ;
 int mlx5dr_cmd_dealloc_modify_header (int ,void*) ;
 int mlx5dr_cmd_destroy_flow_group (int ,int ,void*,void*) ;
 int mlx5dr_cmd_destroy_flow_table (int ,void*,int ) ;
 int mlx5dr_cmd_set_fte_modify_and_vport (int ,int ,void*,void*,void*,void*) ;
 int mlx5dr_err (struct mlx5dr_domain*,char*,int) ;
 int set_action_in ;

struct mlx5dr_fw_recalc_cs_ft *
mlx5dr_fw_create_recalc_cs_ft(struct mlx5dr_domain *dmn, u32 vport_num)
{
 struct mlx5dr_fw_recalc_cs_ft *recalc_cs_ft;
 u32 table_id, group_id, modify_hdr_id;
 u64 rx_icm_addr, modify_ttl_action;
 int ret;

 recalc_cs_ft = kzalloc(sizeof(*recalc_cs_ft), GFP_KERNEL);
 if (!recalc_cs_ft)
  return ((void*)0);

 ret = mlx5dr_cmd_create_flow_table(dmn->mdev, MLX5_FLOW_TABLE_TYPE_FDB,
        0, 0, dmn->info.caps.max_ft_level - 1,
        0, 1, &rx_icm_addr, &table_id);
 if (ret) {
  mlx5dr_err(dmn, "Failed creating TTL W/A FW flow table %d\n", ret);
  goto free_ttl_tbl;
 }

 ret = mlx5dr_cmd_create_empty_flow_group(dmn->mdev,
       MLX5_FLOW_TABLE_TYPE_FDB,
       table_id, &group_id);
 if (ret) {
  mlx5dr_err(dmn, "Failed creating TTL W/A FW flow group %d\n", ret);
  goto destroy_flow_table;
 }


 modify_ttl_action = 0;
 MLX5_SET(set_action_in, &modify_ttl_action, action_type, MLX5_ACTION_TYPE_ADD);
 MLX5_SET(set_action_in, &modify_ttl_action, field, MLX5_ACTION_IN_FIELD_OUT_IP_TTL);

 ret = mlx5dr_cmd_alloc_modify_header(dmn->mdev, MLX5_FLOW_TABLE_TYPE_FDB, 1,
          &modify_ttl_action,
          &modify_hdr_id);
 if (ret) {
  mlx5dr_err(dmn, "Failed modify header TTL %d\n", ret);
  goto destroy_flow_group;
 }

 ret = mlx5dr_cmd_set_fte_modify_and_vport(dmn->mdev,
        MLX5_FLOW_TABLE_TYPE_FDB,
        table_id, group_id, modify_hdr_id,
        vport_num);
 if (ret) {
  mlx5dr_err(dmn, "Failed setting TTL W/A flow table entry %d\n", ret);
  goto dealloc_modify_header;
 }

 recalc_cs_ft->modify_hdr_id = modify_hdr_id;
 recalc_cs_ft->rx_icm_addr = rx_icm_addr;
 recalc_cs_ft->table_id = table_id;
 recalc_cs_ft->group_id = group_id;

 return recalc_cs_ft;

dealloc_modify_header:
 mlx5dr_cmd_dealloc_modify_header(dmn->mdev, modify_hdr_id);
destroy_flow_group:
 mlx5dr_cmd_destroy_flow_group(dmn->mdev,
          MLX5_FLOW_TABLE_TYPE_FDB,
          table_id, group_id);
destroy_flow_table:
 mlx5dr_cmd_destroy_flow_table(dmn->mdev, table_id, MLX5_FLOW_TABLE_TYPE_FDB);
free_ttl_tbl:
 kfree(recalc_cs_ft);
 return ((void*)0);
}
