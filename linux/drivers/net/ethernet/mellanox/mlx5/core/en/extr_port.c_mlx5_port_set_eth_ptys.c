
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;
typedef int in ;


 int EPERM ;
 int MLX5_PTYS_EN ;
 int MLX5_REG_PTYS ;
 int MLX5_SET (int ,int*,int ,int) ;
 int MLX5_ST_SZ_DW (int ) ;
 int eth_proto_admin ;
 int ext_eth_proto_admin ;
 int local_port ;
 int memset (int*,int ,int) ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,int*,int,int*,int,int ,int ,int) ;
 int mlx5_port_query_eth_autoneg (struct mlx5_core_dev*,int *,int *,int *) ;
 int proto_mask ;
 int ptys_reg ;

int mlx5_port_set_eth_ptys(struct mlx5_core_dev *dev, bool an_disable,
      u32 proto_admin, bool ext)
{
 u32 out[MLX5_ST_SZ_DW(ptys_reg)];
 u32 in[MLX5_ST_SZ_DW(ptys_reg)];
 u8 an_disable_admin;
 u8 an_disable_cap;
 u8 an_status;

 mlx5_port_query_eth_autoneg(dev, &an_status, &an_disable_cap,
        &an_disable_admin);
 if (!an_disable_cap && an_disable)
  return -EPERM;

 memset(in, 0, sizeof(in));

 MLX5_SET(ptys_reg, in, local_port, 1);
 MLX5_SET(ptys_reg, in, an_disable_admin, an_disable);
 MLX5_SET(ptys_reg, in, proto_mask, MLX5_PTYS_EN);
 if (ext)
  MLX5_SET(ptys_reg, in, ext_eth_proto_admin, proto_admin);
 else
  MLX5_SET(ptys_reg, in, eth_proto_admin, proto_admin);

 return mlx5_core_access_reg(dev, in, sizeof(in), out,
       sizeof(out), MLX5_REG_PTYS, 0, 1);
}
