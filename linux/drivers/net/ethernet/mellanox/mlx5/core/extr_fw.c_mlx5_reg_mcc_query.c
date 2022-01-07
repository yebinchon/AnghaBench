
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;
typedef int in ;


 int MLX5_GET (int ,int *,int *) ;
 int MLX5_REG_MCC ;
 int MLX5_SET (int ,int *,int *,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int mcc_reg ;
 int memset (int *,int ,int) ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,int *,int,int *,int,int ,int ,int ) ;

__attribute__((used)) static int mlx5_reg_mcc_query(struct mlx5_core_dev *dev,
         u32 *update_handle, u8 *error_code,
         u8 *control_state)
{
 u32 out[MLX5_ST_SZ_DW(mcc_reg)];
 u32 in[MLX5_ST_SZ_DW(mcc_reg)];
 int err;

 memset(in, 0, sizeof(in));
 memset(out, 0, sizeof(out));
 MLX5_SET(mcc_reg, in, update_handle, *update_handle);

 err = mlx5_core_access_reg(dev, in, sizeof(in), out,
       sizeof(out), MLX5_REG_MCC, 0, 0);
 if (err)
  goto out;

 *update_handle = MLX5_GET(mcc_reg, out, update_handle);
 *error_code = MLX5_GET(mcc_reg, out, error_code);
 *control_state = MLX5_GET(mcc_reg, out, control_state);

out:
 return err;
}
