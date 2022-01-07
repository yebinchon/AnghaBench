
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int INIT ;
 int mlx5e_dcbnl_dscp_app (struct mlx5e_priv*,int ) ;

void mlx5e_dcbnl_init_app(struct mlx5e_priv *priv)
{
 mlx5e_dcbnl_dscp_app(priv, INIT);
}
