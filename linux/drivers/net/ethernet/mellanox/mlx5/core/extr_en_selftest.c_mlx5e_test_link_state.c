
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlx5e_priv {int mdev; int netdev; } ;


 int MLX5_VPORT_STATE_OP_MOD_VNIC_VPORT ;
 scalar_t__ VPORT_STATE_UP ;
 scalar_t__ mlx5_query_vport_state (int ,int ,int ) ;
 int netif_carrier_ok (int ) ;

__attribute__((used)) static int mlx5e_test_link_state(struct mlx5e_priv *priv)
{
 u8 port_state;

 if (!netif_carrier_ok(priv->netdev))
  return 1;

 port_state = mlx5_query_vport_state(priv->mdev, MLX5_VPORT_STATE_OP_MOD_VNIC_VPORT, 0);
 return port_state == VPORT_STATE_UP ? 0 : 1;
}
