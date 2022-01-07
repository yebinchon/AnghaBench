
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5e_tirc_config {int dummy; } ;
struct mlx5e_rss_params {int * rx_hash_fields; } ;
struct mlx5e_priv {TYPE_2__* inner_indir_tir; struct mlx5_core_dev* mdev; TYPE_1__* indir_tir; struct mlx5e_rss_params rss_params; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_6__ {int hash; } ;
struct TYPE_5__ {int tirn; } ;
struct TYPE_4__ {int tirn; } ;


 int MLX5E_NUM_INDIR_TIRS ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 TYPE_3__ bitmask ;
 int ctx ;
 int memset (void*,int ,int) ;
 int mlx5_core_modify_tir (struct mlx5_core_dev*,int ,void*,int) ;
 int mlx5e_build_indir_tir_ctx_hash (struct mlx5e_rss_params*,struct mlx5e_tirc_config*,void*,int) ;
 int mlx5e_tunnel_inner_ft_supported (struct mlx5_core_dev*) ;
 int mlx5e_update_rx_hash_fields (struct mlx5e_tirc_config*,int,int ) ;
 int modify_tir_in ;

void mlx5e_modify_tirs_hash(struct mlx5e_priv *priv, void *in, int inlen)
{
 void *tirc = MLX5_ADDR_OF(modify_tir_in, in, ctx);
 struct mlx5e_rss_params *rss = &priv->rss_params;
 struct mlx5_core_dev *mdev = priv->mdev;
 int ctxlen = MLX5_ST_SZ_BYTES(tirc);
 struct mlx5e_tirc_config ttconfig;
 int tt;

 MLX5_SET(modify_tir_in, in, bitmask.hash, 1);

 for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++) {
  memset(tirc, 0, ctxlen);
  mlx5e_update_rx_hash_fields(&ttconfig, tt,
         rss->rx_hash_fields[tt]);
  mlx5e_build_indir_tir_ctx_hash(rss, &ttconfig, tirc, 0);
  mlx5_core_modify_tir(mdev, priv->indir_tir[tt].tirn, in, inlen);
 }

 if (!mlx5e_tunnel_inner_ft_supported(priv->mdev))
  return;

 for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++) {
  memset(tirc, 0, ctxlen);
  mlx5e_update_rx_hash_fields(&ttconfig, tt,
         rss->rx_hash_fields[tt]);
  mlx5e_build_indir_tir_ctx_hash(rss, &ttconfig, tirc, 1);
  mlx5_core_modify_tir(mdev, priv->inner_indir_tir[tt].tirn, in,
         inlen);
 }
}
