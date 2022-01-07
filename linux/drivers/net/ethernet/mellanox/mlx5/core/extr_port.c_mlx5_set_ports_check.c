
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_REG_PCMR ;
 int MLX5_ST_SZ_DW (int ) ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,int *,int,int *,int,int ,int ,int) ;
 int pcmr_reg ;

int mlx5_set_ports_check(struct mlx5_core_dev *mdev, u32 *in, int inlen)
{
 u32 out[MLX5_ST_SZ_DW(pcmr_reg)];

 return mlx5_core_access_reg(mdev, in, inlen, out,
        sizeof(out), MLX5_REG_PCMR, 0, 1);
}
