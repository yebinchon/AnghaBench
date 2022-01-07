
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_priv {int dummy; } ;


 int MLX5E_INDIR_RQT_SIZE ;

u32 mlx5e_ethtool_get_rxfh_indir_size(struct mlx5e_priv *priv)
{
 return MLX5E_INDIR_RQT_SIZE;
}
