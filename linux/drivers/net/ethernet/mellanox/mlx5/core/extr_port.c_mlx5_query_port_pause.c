
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int mlx5_query_pfcc_reg (struct mlx5_core_dev*,int *,int) ;
 int pfcc_reg ;
 int pprx ;
 int pptx ;

int mlx5_query_port_pause(struct mlx5_core_dev *dev,
     u32 *rx_pause, u32 *tx_pause)
{
 u32 out[MLX5_ST_SZ_DW(pfcc_reg)];
 int err;

 err = mlx5_query_pfcc_reg(dev, out, sizeof(out));
 if (err)
  return err;

 if (rx_pause)
  *rx_pause = MLX5_GET(pfcc_reg, out, pprx);

 if (tx_pause)
  *tx_pause = MLX5_GET(pfcc_reg, out, pptx);

 return 0;
}
