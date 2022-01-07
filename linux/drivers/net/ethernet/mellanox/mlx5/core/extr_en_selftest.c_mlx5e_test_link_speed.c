
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_priv {int mdev; int netdev; } ;


 int mlx5e_port_linkspeed (int ,int *) ;
 int netif_carrier_ok (int ) ;

__attribute__((used)) static int mlx5e_test_link_speed(struct mlx5e_priv *priv)
{
 u32 speed;

 if (!netif_carrier_ok(priv->netdev))
  return 1;

 return mlx5e_port_linkspeed(priv->mdev, &speed);
}
