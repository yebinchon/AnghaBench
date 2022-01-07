
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5_flow_table {int node; } ;
struct mlx5_flow_root_namespace {TYPE_2__* cmds; } ;
struct TYPE_6__ {int active; } ;
struct TYPE_4__ {int match_criteria_enable; int * match_criteria; } ;
struct mlx5_flow_group {int start_index; int max_ftes; TYPE_3__ node; TYPE_1__ mask; } ;
struct TYPE_5__ {int (* create_flow_group ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int *,struct mlx5_flow_group*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_GET (int ,void*,int ) ;
 int MLX5_SET (int ,int *,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int create_flow_group_in ;
 int end_flow_index ;
 struct mlx5_flow_root_namespace* find_root (int *) ;
 int fte_match_param ;
 int fte_match_set_misc ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int match_criteria ;
 int match_criteria_enable ;
 int memcpy (void*,int *,int) ;
 int misc_parameters ;
 int source_eswitch_owner_vhca_id ;
 int source_eswitch_owner_vhca_id_valid ;
 int start_flow_index ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int *,struct mlx5_flow_group*) ;
 int trace_mlx5_fs_add_fg (struct mlx5_flow_group*) ;

__attribute__((used)) static int create_auto_flow_group(struct mlx5_flow_table *ft,
      struct mlx5_flow_group *fg)
{
 struct mlx5_flow_root_namespace *root = find_root(&ft->node);
 int inlen = MLX5_ST_SZ_BYTES(create_flow_group_in);
 void *match_criteria_addr;
 u8 src_esw_owner_mask_on;
 void *misc;
 int err;
 u32 *in;

 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 MLX5_SET(create_flow_group_in, in, match_criteria_enable,
   fg->mask.match_criteria_enable);
 MLX5_SET(create_flow_group_in, in, start_flow_index, fg->start_index);
 MLX5_SET(create_flow_group_in, in, end_flow_index, fg->start_index +
   fg->max_ftes - 1);

 misc = MLX5_ADDR_OF(fte_match_param, fg->mask.match_criteria,
       misc_parameters);
 src_esw_owner_mask_on = !!MLX5_GET(fte_match_set_misc, misc,
      source_eswitch_owner_vhca_id);
 MLX5_SET(create_flow_group_in, in,
   source_eswitch_owner_vhca_id_valid, src_esw_owner_mask_on);

 match_criteria_addr = MLX5_ADDR_OF(create_flow_group_in,
        in, match_criteria);
 memcpy(match_criteria_addr, fg->mask.match_criteria,
        sizeof(fg->mask.match_criteria));

 err = root->cmds->create_flow_group(root, ft, in, fg);
 if (!err) {
  fg->node.active = 1;
  trace_mlx5_fs_add_fg(fg);
 }

 kvfree(in);
 return err;
}
