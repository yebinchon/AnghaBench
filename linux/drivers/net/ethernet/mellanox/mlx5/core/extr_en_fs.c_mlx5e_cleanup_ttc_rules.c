
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_ttc_table {int ** tunnel_rules; int ** rules; } ;


 int IS_ERR_OR_NULL (int *) ;
 int MLX5E_NUM_TT ;
 int MLX5E_NUM_TUNNEL_TT ;
 int mlx5_del_flow_rules (int *) ;

__attribute__((used)) static void mlx5e_cleanup_ttc_rules(struct mlx5e_ttc_table *ttc)
{
 int i;

 for (i = 0; i < MLX5E_NUM_TT; i++) {
  if (!IS_ERR_OR_NULL(ttc->rules[i])) {
   mlx5_del_flow_rules(ttc->rules[i]);
   ttc->rules[i] = ((void*)0);
  }
 }

 for (i = 0; i < MLX5E_NUM_TUNNEL_TT; i++) {
  if (!IS_ERR_OR_NULL(ttc->tunnel_rules[i])) {
   mlx5_del_flow_rules(ttc->tunnel_rules[i]);
   ttc->tunnel_rules[i] = ((void*)0);
  }
 }
}
