
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_GET (int ,int *,int *) ;
 int MLX5_PTYS_EN ;
 int MLX5_ST_SZ_DW (int ) ;
 scalar_t__ mlx5_query_port_ptys (struct mlx5_core_dev*,int *,int,int ,int) ;
 int ptys_reg ;

void mlx5_port_query_eth_autoneg(struct mlx5_core_dev *dev, u8 *an_status,
     u8 *an_disable_cap, u8 *an_disable_admin)
{
 u32 out[MLX5_ST_SZ_DW(ptys_reg)];

 *an_status = 0;
 *an_disable_cap = 0;
 *an_disable_admin = 0;

 if (mlx5_query_port_ptys(dev, out, sizeof(out), MLX5_PTYS_EN, 1))
  return;

 *an_status = MLX5_GET(ptys_reg, out, an_status);
 *an_disable_cap = MLX5_GET(ptys_reg, out, an_disable_cap);
 *an_disable_admin = MLX5_GET(ptys_reg, out, an_disable_admin);
}
