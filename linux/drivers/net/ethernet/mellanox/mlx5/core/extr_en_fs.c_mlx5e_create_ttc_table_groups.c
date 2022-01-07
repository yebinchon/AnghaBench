
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5e_flow_table {size_t num_groups; int ** g; int t; } ;
struct mlx5e_ttc_table {struct mlx5e_flow_table ft; } ;
struct TYPE_2__ {int ip_protocol; int ethertype; int ip_version; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ MLX5E_TTC_GROUP1_SIZE ;
 scalar_t__ MLX5E_TTC_GROUP2_SIZE ;
 scalar_t__ MLX5E_TTC_GROUP3_SIZE ;
 int MLX5E_TTC_NUM_GROUPS ;
 int * MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_MATCH_OUTER_HEADERS ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int MLX5_SET_CFG (int *,int ,int) ;
 int MLX5_SET_TO_ONES (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int PTR_ERR (int *) ;
 int create_flow_group_in ;
 int end_flow_index ;
 int fte_match_param ;
 int ** kcalloc (int ,int,int ) ;
 int kfree (int **) ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int match_criteria ;
 int match_criteria_enable ;
 int memset (int *,int ,int) ;
 void* mlx5_create_flow_group (int ,int *) ;
 TYPE_1__ outer_headers ;
 int start_flow_index ;

__attribute__((used)) static int mlx5e_create_ttc_table_groups(struct mlx5e_ttc_table *ttc,
      bool use_ipv)
{
 int inlen = MLX5_ST_SZ_BYTES(create_flow_group_in);
 struct mlx5e_flow_table *ft = &ttc->ft;
 int ix = 0;
 u32 *in;
 int err;
 u8 *mc;

 ft->g = kcalloc(MLX5E_TTC_NUM_GROUPS,
   sizeof(*ft->g), GFP_KERNEL);
 if (!ft->g)
  return -ENOMEM;
 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in) {
  kfree(ft->g);
  return -ENOMEM;
 }


 mc = MLX5_ADDR_OF(create_flow_group_in, in, match_criteria);
 MLX5_SET_TO_ONES(fte_match_param, mc, outer_headers.ip_protocol);
 if (use_ipv)
  MLX5_SET_TO_ONES(fte_match_param, mc, outer_headers.ip_version);
 else
  MLX5_SET_TO_ONES(fte_match_param, mc, outer_headers.ethertype);
 MLX5_SET_CFG(in, match_criteria_enable, MLX5_MATCH_OUTER_HEADERS);
 MLX5_SET_CFG(in, start_flow_index, ix);
 ix += MLX5E_TTC_GROUP1_SIZE;
 MLX5_SET_CFG(in, end_flow_index, ix - 1);
 ft->g[ft->num_groups] = mlx5_create_flow_group(ft->t, in);
 if (IS_ERR(ft->g[ft->num_groups]))
  goto err;
 ft->num_groups++;


 MLX5_SET(fte_match_param, mc, outer_headers.ip_protocol, 0);
 MLX5_SET_CFG(in, start_flow_index, ix);
 ix += MLX5E_TTC_GROUP2_SIZE;
 MLX5_SET_CFG(in, end_flow_index, ix - 1);
 ft->g[ft->num_groups] = mlx5_create_flow_group(ft->t, in);
 if (IS_ERR(ft->g[ft->num_groups]))
  goto err;
 ft->num_groups++;


 memset(in, 0, inlen);
 MLX5_SET_CFG(in, start_flow_index, ix);
 ix += MLX5E_TTC_GROUP3_SIZE;
 MLX5_SET_CFG(in, end_flow_index, ix - 1);
 ft->g[ft->num_groups] = mlx5_create_flow_group(ft->t, in);
 if (IS_ERR(ft->g[ft->num_groups]))
  goto err;
 ft->num_groups++;

 kvfree(in);
 return 0;

err:
 err = PTR_ERR(ft->g[ft->num_groups]);
 ft->g[ft->num_groups] = ((void*)0);
 kvfree(in);

 return err;
}
