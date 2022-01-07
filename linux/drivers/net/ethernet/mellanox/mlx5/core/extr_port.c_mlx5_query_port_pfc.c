
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int mlx5_query_pfcc_reg (struct mlx5_core_dev*,int *,int) ;
 int pfcc_reg ;
 int pfcrx ;
 int pfctx ;

int mlx5_query_port_pfc(struct mlx5_core_dev *dev, u8 *pfc_en_tx, u8 *pfc_en_rx)
{
 u32 out[MLX5_ST_SZ_DW(pfcc_reg)];
 int err;

 err = mlx5_query_pfcc_reg(dev, out, sizeof(out));
 if (err)
  return err;

 if (pfc_en_tx)
  *pfc_en_tx = MLX5_GET(pfcc_reg, out, pfctx);

 if (pfc_en_rx)
  *pfc_en_rx = MLX5_GET(pfcc_reg, out, pfcrx);

 return 0;
}
