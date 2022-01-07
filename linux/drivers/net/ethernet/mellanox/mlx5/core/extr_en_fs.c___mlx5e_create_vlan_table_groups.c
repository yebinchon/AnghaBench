
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5e_flow_table {size_t num_groups; int ** g; int t; } ;
struct TYPE_2__ {int svlan_tag; int cvlan_tag; int first_vid; } ;


 scalar_t__ IS_ERR (int *) ;
 scalar_t__ MLX5E_VLAN_GROUP0_SIZE ;
 scalar_t__ MLX5E_VLAN_GROUP1_SIZE ;
 scalar_t__ MLX5E_VLAN_GROUP2_SIZE ;
 scalar_t__ MLX5E_VLAN_GROUP3_SIZE ;
 int * MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_MATCH_OUTER_HEADERS ;
 int MLX5_SET_CFG (int *,int ,int) ;
 int MLX5_SET_TO_ONES (int ,int *,int ) ;
 int PTR_ERR (int *) ;
 int create_flow_group_in ;
 int end_flow_index ;
 int fte_match_param ;
 int match_criteria ;
 int match_criteria_enable ;
 int memset (int *,int ,int) ;
 void* mlx5_create_flow_group (int ,int *) ;
 int mlx5e_destroy_groups (struct mlx5e_flow_table*) ;
 TYPE_1__ outer_headers ;
 int start_flow_index ;

__attribute__((used)) static int __mlx5e_create_vlan_table_groups(struct mlx5e_flow_table *ft, u32 *in,
         int inlen)
{
 int err;
 int ix = 0;
 u8 *mc = MLX5_ADDR_OF(create_flow_group_in, in, match_criteria);

 memset(in, 0, inlen);
 MLX5_SET_CFG(in, match_criteria_enable, MLX5_MATCH_OUTER_HEADERS);
 MLX5_SET_TO_ONES(fte_match_param, mc, outer_headers.cvlan_tag);
 MLX5_SET_TO_ONES(fte_match_param, mc, outer_headers.first_vid);
 MLX5_SET_CFG(in, start_flow_index, ix);
 ix += MLX5E_VLAN_GROUP0_SIZE;
 MLX5_SET_CFG(in, end_flow_index, ix - 1);
 ft->g[ft->num_groups] = mlx5_create_flow_group(ft->t, in);
 if (IS_ERR(ft->g[ft->num_groups]))
  goto err_destroy_groups;
 ft->num_groups++;

 memset(in, 0, inlen);
 MLX5_SET_CFG(in, match_criteria_enable, MLX5_MATCH_OUTER_HEADERS);
 MLX5_SET_TO_ONES(fte_match_param, mc, outer_headers.svlan_tag);
 MLX5_SET_TO_ONES(fte_match_param, mc, outer_headers.first_vid);
 MLX5_SET_CFG(in, start_flow_index, ix);
 ix += MLX5E_VLAN_GROUP1_SIZE;
 MLX5_SET_CFG(in, end_flow_index, ix - 1);
 ft->g[ft->num_groups] = mlx5_create_flow_group(ft->t, in);
 if (IS_ERR(ft->g[ft->num_groups]))
  goto err_destroy_groups;
 ft->num_groups++;

 memset(in, 0, inlen);
 MLX5_SET_CFG(in, match_criteria_enable, MLX5_MATCH_OUTER_HEADERS);
 MLX5_SET_TO_ONES(fte_match_param, mc, outer_headers.cvlan_tag);
 MLX5_SET_CFG(in, start_flow_index, ix);
 ix += MLX5E_VLAN_GROUP2_SIZE;
 MLX5_SET_CFG(in, end_flow_index, ix - 1);
 ft->g[ft->num_groups] = mlx5_create_flow_group(ft->t, in);
 if (IS_ERR(ft->g[ft->num_groups]))
  goto err_destroy_groups;
 ft->num_groups++;

 memset(in, 0, inlen);
 MLX5_SET_CFG(in, match_criteria_enable, MLX5_MATCH_OUTER_HEADERS);
 MLX5_SET_TO_ONES(fte_match_param, mc, outer_headers.svlan_tag);
 MLX5_SET_CFG(in, start_flow_index, ix);
 ix += MLX5E_VLAN_GROUP3_SIZE;
 MLX5_SET_CFG(in, end_flow_index, ix - 1);
 ft->g[ft->num_groups] = mlx5_create_flow_group(ft->t, in);
 if (IS_ERR(ft->g[ft->num_groups]))
  goto err_destroy_groups;
 ft->num_groups++;

 return 0;

err_destroy_groups:
 err = PTR_ERR(ft->g[ft->num_groups]);
 ft->g[ft->num_groups] = ((void*)0);
 mlx5e_destroy_groups(ft);

 return err;
}
