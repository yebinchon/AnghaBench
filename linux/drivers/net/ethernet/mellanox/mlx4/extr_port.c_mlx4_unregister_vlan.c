
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_FREE_RES ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int RES_OP_RESERVE_AND_MAP ;
 scalar_t__ RES_VLAN ;
 int __mlx4_unregister_vlan (struct mlx4_dev*,scalar_t__,int ) ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,int *,int,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;

void mlx4_unregister_vlan(struct mlx4_dev *dev, u8 port, u16 vlan)
{
 u64 out_param = 0;

 if (mlx4_is_mfunc(dev)) {
  (void) mlx4_cmd_imm(dev, vlan, &out_param,
        ((u32) port) << 8 | (u32) RES_VLAN,
        RES_OP_RESERVE_AND_MAP,
        MLX4_CMD_FREE_RES, MLX4_CMD_TIME_CLASS_A,
        MLX4_CMD_WRAPPED);
  return;
 }
 __mlx4_unregister_vlan(dev, port, vlan);
}
