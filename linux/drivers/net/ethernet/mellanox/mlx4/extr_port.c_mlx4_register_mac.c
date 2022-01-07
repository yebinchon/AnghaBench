
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct mlx4_dev {int flags; } ;


 int EINVAL ;
 int MLX4_CMD_ALLOC_RES ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int MLX4_FLAG_OLD_REG_MAC ;
 int RES_MAC ;
 int RES_OP_RESERVE_AND_MAP ;
 int __mlx4_register_mac (struct mlx4_dev*,scalar_t__,int ) ;
 int get_param_l (int *) ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,int *,int,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 int set_param_l (int *,scalar_t__) ;

int mlx4_register_mac(struct mlx4_dev *dev, u8 port, u64 mac)
{
 u64 out_param = 0;
 int err = -EINVAL;

 if (mlx4_is_mfunc(dev)) {
  if (!(dev->flags & MLX4_FLAG_OLD_REG_MAC)) {
   err = mlx4_cmd_imm(dev, mac, &out_param,
        ((u32) port) << 8 | (u32) RES_MAC,
        RES_OP_RESERVE_AND_MAP, MLX4_CMD_ALLOC_RES,
        MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
  }
  if (err && err == -EINVAL && mlx4_is_slave(dev)) {

   set_param_l(&out_param, port);
   err = mlx4_cmd_imm(dev, mac, &out_param, RES_MAC,
        RES_OP_RESERVE_AND_MAP, MLX4_CMD_ALLOC_RES,
        MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
   if (!err)
    dev->flags |= MLX4_FLAG_OLD_REG_MAC;
  }
  if (err)
   return err;

  return get_param_l(&out_param);
 }
 return __mlx4_register_mac(dev, port, mac);
}
