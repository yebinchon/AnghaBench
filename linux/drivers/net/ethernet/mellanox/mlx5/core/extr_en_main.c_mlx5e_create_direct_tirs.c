
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rqtn; } ;
struct mlx5e_tir {TYPE_1__ rqt; } ;
struct mlx5e_priv {int max_nch; int mdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int create_tir_in ;
 int ctx ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int mlx5_core_warn (int ,char*,int) ;
 int mlx5e_build_direct_tir_ctx (struct mlx5e_priv*,int ,void*) ;
 int mlx5e_create_tir (int ,struct mlx5e_tir*,int *,int) ;
 int mlx5e_destroy_tir (int ,struct mlx5e_tir*) ;
 scalar_t__ unlikely (int) ;

int mlx5e_create_direct_tirs(struct mlx5e_priv *priv, struct mlx5e_tir *tirs)
{
 struct mlx5e_tir *tir;
 void *tirc;
 int inlen;
 int err = 0;
 u32 *in;
 int ix;

 inlen = MLX5_ST_SZ_BYTES(create_tir_in);
 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 for (ix = 0; ix < priv->max_nch; ix++) {
  memset(in, 0, inlen);
  tir = &tirs[ix];
  tirc = MLX5_ADDR_OF(create_tir_in, in, ctx);
  mlx5e_build_direct_tir_ctx(priv, tir->rqt.rqtn, tirc);
  err = mlx5e_create_tir(priv->mdev, tir, in, inlen);
  if (unlikely(err))
   goto err_destroy_ch_tirs;
 }

 goto out;

err_destroy_ch_tirs:
 mlx5_core_warn(priv->mdev, "create tirs failed, %d\n", err);
 for (ix--; ix >= 0; ix--)
  mlx5e_destroy_tir(priv->mdev, &tirs[ix]);

out:
 kvfree(in);

 return err;
}
