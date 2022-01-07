
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttc_params {int * indir_tirn; int any_tt_tirn; } ;
struct TYPE_3__ {struct mlx5_flow_table* t; } ;
struct mlx5e_ttc_table {struct mlx5_flow_handle** rules; TYPE_1__ ft; } ;
struct mlx5e_priv {int dummy; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_flow_destination {int tir_num; int type; } ;
struct TYPE_4__ {int proto; int etype; } ;


 scalar_t__ IS_ERR (struct mlx5_flow_handle*) ;
 int MLX5E_NUM_TT ;
 int MLX5E_TT_ANY ;
 int MLX5_FLOW_DESTINATION_TYPE_TIR ;
 int PTR_ERR (struct mlx5_flow_handle*) ;
 int mlx5e_cleanup_ttc_rules (struct mlx5e_ttc_table*) ;
 struct mlx5_flow_handle* mlx5e_generate_inner_ttc_rule (struct mlx5e_priv*,struct mlx5_flow_table*,struct mlx5_flow_destination*,int ,int ) ;
 TYPE_2__* ttc_rules ;

__attribute__((used)) static int mlx5e_generate_inner_ttc_table_rules(struct mlx5e_priv *priv,
      struct ttc_params *params,
      struct mlx5e_ttc_table *ttc)
{
 struct mlx5_flow_destination dest = {};
 struct mlx5_flow_handle **rules;
 struct mlx5_flow_table *ft;
 int err;
 int tt;

 ft = ttc->ft.t;
 rules = ttc->rules;

 dest.type = MLX5_FLOW_DESTINATION_TYPE_TIR;
 for (tt = 0; tt < MLX5E_NUM_TT; tt++) {
  if (tt == MLX5E_TT_ANY)
   dest.tir_num = params->any_tt_tirn;
  else
   dest.tir_num = params->indir_tirn[tt];

  rules[tt] = mlx5e_generate_inner_ttc_rule(priv, ft, &dest,
         ttc_rules[tt].etype,
         ttc_rules[tt].proto);
  if (IS_ERR(rules[tt]))
   goto del_rules;
 }

 return 0;

del_rules:
 err = PTR_ERR(rules[tt]);
 rules[tt] = ((void*)0);
 mlx5e_cleanup_ttc_rules(ttc);
 return err;
}
