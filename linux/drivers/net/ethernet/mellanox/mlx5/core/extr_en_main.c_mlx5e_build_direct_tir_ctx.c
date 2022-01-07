
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_priv {int dummy; } ;


 int MLX5_RX_HASH_FN_INVERTED_XOR8 ;
 int MLX5_SET (int *,int *,int ,int ) ;
 int mlx5e_build_indir_tir_ctx_common (struct mlx5e_priv*,int ,int *) ;
 int rx_hash_fn ;

__attribute__((used)) static void mlx5e_build_direct_tir_ctx(struct mlx5e_priv *priv, u32 rqtn, u32 *tirc)
{
 mlx5e_build_indir_tir_ctx_common(priv, rqtn, tirc);
 MLX5_SET(tirc, tirc, rx_hash_fn, MLX5_RX_HASH_FN_INVERTED_XOR8);
}
