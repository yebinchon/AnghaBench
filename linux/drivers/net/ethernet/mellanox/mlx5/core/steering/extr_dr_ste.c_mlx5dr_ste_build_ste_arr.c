
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct mlx5dr_ste_build {int (* ste_build_tag_func ) (struct mlx5dr_match_param*,struct mlx5dr_ste_build*,int *) ;int byte_mask; int lu_type; int bit_mask; } ;
struct mlx5dr_matcher_rx_tx {int num_of_builders; struct mlx5dr_ste_build* ste_builder; TYPE_1__* nic_tbl; } ;
struct mlx5dr_matcher {int mask; int match_criteria; TYPE_2__* tbl; } ;
struct mlx5dr_match_param {int dummy; } ;
struct mlx5dr_domain_rx_tx {int ste_type; } ;
struct TYPE_7__ {int gvmi; } ;
struct TYPE_8__ {TYPE_3__ caps; } ;
struct mlx5dr_domain {TYPE_4__ info; } ;
struct TYPE_6__ {struct mlx5dr_domain* dmn; } ;
struct TYPE_5__ {struct mlx5dr_domain_rx_tx* nic_dmn; } ;


 int DR_STE_SIZE ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int byte_mask ;
 int mlx5dr_ste_build_pre_check (struct mlx5dr_domain*,int ,int *,struct mlx5dr_match_param*) ;
 int mlx5dr_ste_init (int *,int ,int ,int ) ;
 int mlx5dr_ste_set_bit_mask (int *,int ) ;
 int next_lu_type ;
 int ste_general ;
 int stub1 (struct mlx5dr_match_param*,struct mlx5dr_ste_build*,int *) ;

int mlx5dr_ste_build_ste_arr(struct mlx5dr_matcher *matcher,
        struct mlx5dr_matcher_rx_tx *nic_matcher,
        struct mlx5dr_match_param *value,
        u8 *ste_arr)
{
 struct mlx5dr_domain_rx_tx *nic_dmn = nic_matcher->nic_tbl->nic_dmn;
 struct mlx5dr_domain *dmn = matcher->tbl->dmn;
 struct mlx5dr_ste_build *sb;
 int ret, i;

 ret = mlx5dr_ste_build_pre_check(dmn, matcher->match_criteria,
      &matcher->mask, value);
 if (ret)
  return ret;

 sb = nic_matcher->ste_builder;
 for (i = 0; i < nic_matcher->num_of_builders; i++) {
  mlx5dr_ste_init(ste_arr,
    sb->lu_type,
    nic_dmn->ste_type,
    dmn->info.caps.gvmi);

  mlx5dr_ste_set_bit_mask(ste_arr, sb->bit_mask);

  ret = sb->ste_build_tag_func(value, sb, ste_arr);
  if (ret)
   return ret;


  if (i < (nic_matcher->num_of_builders - 1)) {



   sb++;
   MLX5_SET(ste_general, ste_arr, next_lu_type, sb->lu_type);
   MLX5_SET(ste_general, ste_arr, byte_mask, sb->byte_mask);
  }
  ste_arr += DR_STE_SIZE;
 }
 return 0;
}
