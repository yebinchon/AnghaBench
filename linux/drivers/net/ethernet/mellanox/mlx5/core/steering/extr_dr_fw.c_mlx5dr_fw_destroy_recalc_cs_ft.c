
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_fw_recalc_cs_ft {int table_id; int group_id; int modify_hdr_id; } ;
struct mlx5dr_domain {int mdev; } ;


 int MLX5_FLOW_TABLE_TYPE_FDB ;
 int kfree (struct mlx5dr_fw_recalc_cs_ft*) ;
 int mlx5dr_cmd_dealloc_modify_header (int ,int ) ;
 int mlx5dr_cmd_del_flow_table_entry (int ,int ,int ) ;
 int mlx5dr_cmd_destroy_flow_group (int ,int ,int ,int ) ;
 int mlx5dr_cmd_destroy_flow_table (int ,int ,int ) ;

void mlx5dr_fw_destroy_recalc_cs_ft(struct mlx5dr_domain *dmn,
        struct mlx5dr_fw_recalc_cs_ft *recalc_cs_ft)
{
 mlx5dr_cmd_del_flow_table_entry(dmn->mdev,
     MLX5_FLOW_TABLE_TYPE_FDB,
     recalc_cs_ft->table_id);
 mlx5dr_cmd_dealloc_modify_header(dmn->mdev, recalc_cs_ft->modify_hdr_id);
 mlx5dr_cmd_destroy_flow_group(dmn->mdev,
          MLX5_FLOW_TABLE_TYPE_FDB,
          recalc_cs_ft->table_id,
          recalc_cs_ft->group_id);
 mlx5dr_cmd_destroy_flow_table(dmn->mdev,
          recalc_cs_ft->table_id,
          MLX5_FLOW_TABLE_TYPE_FDB);

 kfree(recalc_cs_ft);
}
