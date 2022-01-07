
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5e_tirc_config {int dummy; } ;
struct mlx5e_priv {int rss_params; } ;
struct TYPE_2__ {int rqtn; } ;
struct mlx5e_hairpin {int * indir_tirn; int func_mdev; TYPE_1__ indir_rqt; int tdn; struct mlx5e_priv* func_priv; } ;


 int MLX5E_NUM_INDIR_TIRS ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int MLX5_TIRC_DISP_TYPE_INDIRECT ;
 int create_tir_in ;
 int ctx ;
 int disp_type ;
 int indirect_table ;
 int memset (int *,int ,int ) ;
 int mlx5_core_create_tir (int ,int *,int ,int *) ;
 int mlx5_core_destroy_tir (int ,int ) ;
 int mlx5_core_warn (int ,char*,int) ;
 int mlx5e_build_indir_tir_ctx_hash (int *,struct mlx5e_tirc_config*,void*,int) ;
 struct mlx5e_tirc_config mlx5e_tirc_get_default_config (int) ;
 int transport_domain ;

__attribute__((used)) static int mlx5e_hairpin_create_indirect_tirs(struct mlx5e_hairpin *hp)
{
 struct mlx5e_priv *priv = hp->func_priv;
 u32 in[MLX5_ST_SZ_DW(create_tir_in)];
 int tt, i, err;
 void *tirc;

 for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++) {
  struct mlx5e_tirc_config ttconfig = mlx5e_tirc_get_default_config(tt);

  memset(in, 0, MLX5_ST_SZ_BYTES(create_tir_in));
  tirc = MLX5_ADDR_OF(create_tir_in, in, ctx);

  MLX5_SET(tirc, tirc, transport_domain, hp->tdn);
  MLX5_SET(tirc, tirc, disp_type, MLX5_TIRC_DISP_TYPE_INDIRECT);
  MLX5_SET(tirc, tirc, indirect_table, hp->indir_rqt.rqtn);
  mlx5e_build_indir_tir_ctx_hash(&priv->rss_params, &ttconfig, tirc, 0);

  err = mlx5_core_create_tir(hp->func_mdev, in,
        MLX5_ST_SZ_BYTES(create_tir_in), &hp->indir_tirn[tt]);
  if (err) {
   mlx5_core_warn(hp->func_mdev, "create indirect tirs failed, %d\n", err);
   goto err_destroy_tirs;
  }
 }
 return 0;

err_destroy_tirs:
 for (i = 0; i < tt; i++)
  mlx5_core_destroy_tir(hp->func_mdev, hp->indir_tirn[i]);
 return err;
}
