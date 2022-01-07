
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int device_stall_critical_watermark ;
 int device_stall_minor_watermark ;
 int mlx5_query_pfcc_reg (struct mlx5_core_dev*,int *,int) ;
 int pfcc_reg ;

int mlx5_query_port_stall_watermark(struct mlx5_core_dev *dev,
        u16 *stall_critical_watermark,
        u16 *stall_minor_watermark)
{
 u32 out[MLX5_ST_SZ_DW(pfcc_reg)];
 int err;

 err = mlx5_query_pfcc_reg(dev, out, sizeof(out));
 if (err)
  return err;

 if (stall_critical_watermark)
  *stall_critical_watermark = MLX5_GET(pfcc_reg, out,
           device_stall_critical_watermark);

 if (stall_minor_watermark)
  *stall_minor_watermark = MLX5_GET(pfcc_reg, out,
        device_stall_minor_watermark);

 return 0;
}
