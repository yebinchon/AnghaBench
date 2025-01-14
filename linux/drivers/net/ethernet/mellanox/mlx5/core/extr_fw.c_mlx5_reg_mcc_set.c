
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;
typedef int in ;
typedef enum mlxsw_reg_mcc_instruction { ____Placeholder_mlxsw_reg_mcc_instruction } mlxsw_reg_mcc_instruction ;


 int MLX5_REG_MCC ;
 int MLX5_SET (int ,int*,int,int) ;
 int MLX5_ST_SZ_DW (int ) ;
 int instruction ;
 int mcc_reg ;
 int memset (int*,int ,int) ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,int*,int,int*,int,int ,int ,int) ;

__attribute__((used)) static int mlx5_reg_mcc_set(struct mlx5_core_dev *dev,
       enum mlxsw_reg_mcc_instruction instr,
       u16 component_index, u32 update_handle,
       u32 component_size)
{
 u32 out[MLX5_ST_SZ_DW(mcc_reg)];
 u32 in[MLX5_ST_SZ_DW(mcc_reg)];

 memset(in, 0, sizeof(in));

 MLX5_SET(mcc_reg, in, instruction, instr);
 MLX5_SET(mcc_reg, in, component_index, component_index);
 MLX5_SET(mcc_reg, in, update_handle, update_handle);
 MLX5_SET(mcc_reg, in, component_size, component_size);

 return mlx5_core_access_reg(dev, in, sizeof(in), out,
        sizeof(out), MLX5_REG_MCC, 0, 1);
}
