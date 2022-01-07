
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int mlx5e_ipsec_update_stats (struct mlx5e_priv*) ;

__attribute__((used)) static void mlx5e_grp_ipsec_update_stats(struct mlx5e_priv *priv)
{
 mlx5e_ipsec_update_stats(priv);
}
