
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_reg_host_endianness {int he; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int he_out ;
typedef int he_in ;


 int MLX5_REG_HOST_ENDIANNESS ;
 int MLX5_SET_HOST_ENDIANNESS ;
 int memset (struct mlx5_reg_host_endianness*,int ,int) ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,struct mlx5_reg_host_endianness*,int,struct mlx5_reg_host_endianness*,int,int ,int ,int) ;
 int mlx5_core_is_pf (struct mlx5_core_dev*) ;

__attribute__((used)) static int set_hca_ctrl(struct mlx5_core_dev *dev)
{
 struct mlx5_reg_host_endianness he_in;
 struct mlx5_reg_host_endianness he_out;
 int err;

 if (!mlx5_core_is_pf(dev))
  return 0;

 memset(&he_in, 0, sizeof(he_in));
 he_in.he = MLX5_SET_HOST_ENDIANNESS;
 err = mlx5_core_access_reg(dev, &he_in, sizeof(he_in),
     &he_out, sizeof(he_out),
     MLX5_REG_HOST_ENDIANNESS, 0, 1);
 return err;
}
