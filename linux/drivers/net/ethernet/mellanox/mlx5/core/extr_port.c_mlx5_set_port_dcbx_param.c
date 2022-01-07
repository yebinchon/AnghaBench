
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_REG_DCBX_PARAM ;
 int MLX5_SET (int ,int *,int ,int) ;
 int MLX5_ST_SZ_DW (int ) ;
 int dcbx_param ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,int *,int,int *,int,int ,int ,int) ;
 int port_number ;

int mlx5_set_port_dcbx_param(struct mlx5_core_dev *mdev, u32 *in)
{
 u32 out[MLX5_ST_SZ_DW(dcbx_param)];

 MLX5_SET(dcbx_param, in, port_number, 1);

 return mlx5_core_access_reg(mdev, in, sizeof(out), out,
        sizeof(out), MLX5_REG_DCBX_PARAM, 0, 1);
}
