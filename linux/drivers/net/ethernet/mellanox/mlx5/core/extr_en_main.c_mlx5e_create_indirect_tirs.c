
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_tir {int dummy; } ;
struct mlx5e_priv {struct mlx5e_tir* indir_tir; int mdev; struct mlx5e_tir* inner_indir_tir; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5E_NUM_INDIR_TIRS ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int create_tir_in ;
 int ctx ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int mlx5_core_warn (int ,char*,int) ;
 int mlx5e_build_indir_tir_ctx (struct mlx5e_priv*,int,void*) ;
 int mlx5e_build_inner_indir_tir_ctx (struct mlx5e_priv*,int,void*) ;
 int mlx5e_create_tir (int ,struct mlx5e_tir*,int *,int) ;
 int mlx5e_destroy_tir (int ,struct mlx5e_tir*) ;
 int mlx5e_tunnel_inner_ft_supported (int ) ;

int mlx5e_create_indirect_tirs(struct mlx5e_priv *priv, bool inner_ttc)
{
 struct mlx5e_tir *tir;
 void *tirc;
 int inlen;
 int i = 0;
 int err;
 u32 *in;
 int tt;

 inlen = MLX5_ST_SZ_BYTES(create_tir_in);
 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++) {
  memset(in, 0, inlen);
  tir = &priv->indir_tir[tt];
  tirc = MLX5_ADDR_OF(create_tir_in, in, ctx);
  mlx5e_build_indir_tir_ctx(priv, tt, tirc);
  err = mlx5e_create_tir(priv->mdev, tir, in, inlen);
  if (err) {
   mlx5_core_warn(priv->mdev, "create indirect tirs failed, %d\n", err);
   goto err_destroy_inner_tirs;
  }
 }

 if (!inner_ttc || !mlx5e_tunnel_inner_ft_supported(priv->mdev))
  goto out;

 for (i = 0; i < MLX5E_NUM_INDIR_TIRS; i++) {
  memset(in, 0, inlen);
  tir = &priv->inner_indir_tir[i];
  tirc = MLX5_ADDR_OF(create_tir_in, in, ctx);
  mlx5e_build_inner_indir_tir_ctx(priv, i, tirc);
  err = mlx5e_create_tir(priv->mdev, tir, in, inlen);
  if (err) {
   mlx5_core_warn(priv->mdev, "create inner indirect tirs failed, %d\n", err);
   goto err_destroy_inner_tirs;
  }
 }

out:
 kvfree(in);

 return 0;

err_destroy_inner_tirs:
 for (i--; i >= 0; i--)
  mlx5e_destroy_tir(priv->mdev, &priv->inner_indir_tir[i]);

 for (tt--; tt >= 0; tt--)
  mlx5e_destroy_tir(priv->mdev, &priv->indir_tir[tt]);

 kvfree(in);

 return err;
}
