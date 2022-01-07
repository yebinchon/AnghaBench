
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int mlx5e_set_netdev_mtu_boundaries (struct mlx5e_priv*) ;

__attribute__((used)) static void mlx5e_rep_enable(struct mlx5e_priv *priv)
{
 mlx5e_set_netdev_mtu_boundaries(priv);
}
