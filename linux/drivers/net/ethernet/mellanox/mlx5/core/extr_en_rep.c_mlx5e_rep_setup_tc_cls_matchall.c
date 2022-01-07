
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cls_matchall_offload {int command; } ;
struct mlx5e_priv {int dummy; } ;


 int EOPNOTSUPP ;



 int mlx5e_tc_configure_matchall (struct mlx5e_priv*,struct tc_cls_matchall_offload*) ;
 int mlx5e_tc_delete_matchall (struct mlx5e_priv*,struct tc_cls_matchall_offload*) ;
 int mlx5e_tc_stats_matchall (struct mlx5e_priv*,struct tc_cls_matchall_offload*) ;

__attribute__((used)) static
int mlx5e_rep_setup_tc_cls_matchall(struct mlx5e_priv *priv,
        struct tc_cls_matchall_offload *ma)
{
 switch (ma->command) {
 case 129:
  return mlx5e_tc_configure_matchall(priv, ma);
 case 130:
  return mlx5e_tc_delete_matchall(priv, ma);
 case 128:
  mlx5e_tc_stats_matchall(priv, ma);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
