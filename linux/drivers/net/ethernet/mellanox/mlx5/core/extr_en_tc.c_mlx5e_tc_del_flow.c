
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int dummy; } ;
struct mlx5e_priv {int dummy; } ;


 scalar_t__ mlx5e_is_eswitch_flow (struct mlx5e_tc_flow*) ;
 int mlx5e_tc_del_fdb_flow (struct mlx5e_priv*,struct mlx5e_tc_flow*) ;
 int mlx5e_tc_del_fdb_peer_flow (struct mlx5e_tc_flow*) ;
 int mlx5e_tc_del_nic_flow (struct mlx5e_priv*,struct mlx5e_tc_flow*) ;

__attribute__((used)) static void mlx5e_tc_del_flow(struct mlx5e_priv *priv,
         struct mlx5e_tc_flow *flow)
{
 if (mlx5e_is_eswitch_flow(flow)) {
  mlx5e_tc_del_fdb_peer_flow(flow);
  mlx5e_tc_del_fdb_flow(priv, flow);
 } else {
  mlx5e_tc_del_nic_flow(priv, flow);
 }
}
