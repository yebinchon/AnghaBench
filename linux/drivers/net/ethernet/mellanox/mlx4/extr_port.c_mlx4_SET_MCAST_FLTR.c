
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_SET_MCAST_FLTR ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;
 int mlx4_cmd (struct mlx4_dev*,int,int ,int ,int ,int ,int ) ;

int mlx4_SET_MCAST_FLTR(struct mlx4_dev *dev, u8 port,
   u64 mac, u64 clear, u8 mode)
{
 return mlx4_cmd(dev, (mac | (clear << 63)), port, mode,
   MLX4_CMD_SET_MCAST_FLTR, MLX4_CMD_TIME_CLASS_B,
   MLX4_CMD_WRAPPED);
}
