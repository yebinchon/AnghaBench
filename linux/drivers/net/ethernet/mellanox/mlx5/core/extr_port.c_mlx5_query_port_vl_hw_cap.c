
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_GET (int ,int *,int *) ;
 int MLX5_ST_SZ_DW (int ) ;
 int mlx5_query_port_pvlc (struct mlx5_core_dev*,int *,int,int ) ;
 int pvlc_reg ;

int mlx5_query_port_vl_hw_cap(struct mlx5_core_dev *dev,
         u8 *vl_hw_cap, u8 local_port)
{
 u32 out[MLX5_ST_SZ_DW(pvlc_reg)];
 int err;

 err = mlx5_query_port_pvlc(dev, out, sizeof(out), local_port);
 if (err)
  return err;

 *vl_hw_cap = MLX5_GET(pvlc_reg, out, vl_hw_cap);

 return 0;
}
