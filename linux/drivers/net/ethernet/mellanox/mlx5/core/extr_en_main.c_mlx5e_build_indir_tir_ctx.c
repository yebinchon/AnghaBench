
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rqtn; } ;
struct mlx5e_priv {int rss_params; TYPE_1__ indir_rqt; } ;
typedef enum mlx5e_traffic_types { ____Placeholder_mlx5e_traffic_types } mlx5e_traffic_types ;


 int mlx5e_build_indir_tir_ctx_common (struct mlx5e_priv*,int ,int *) ;
 int mlx5e_build_indir_tir_ctx_hash (int *,int *,int *,int) ;
 int * tirc_default_config ;

__attribute__((used)) static void mlx5e_build_indir_tir_ctx(struct mlx5e_priv *priv,
          enum mlx5e_traffic_types tt,
          u32 *tirc)
{
 mlx5e_build_indir_tir_ctx_common(priv, priv->indir_rqt.rqtn, tirc);
 mlx5e_build_indir_tir_ctx_hash(&priv->rss_params,
           &tirc_default_config[tt], tirc, 0);
}
