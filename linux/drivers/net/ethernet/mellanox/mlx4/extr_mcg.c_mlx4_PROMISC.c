
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct mlx4_dev {int dummy; } ;
typedef enum mlx4_steer_type { ____Placeholder_mlx4_steer_type } mlx4_steer_type ;


 int MLX4_CMD_PROMISC ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int mlx4_cmd (struct mlx4_dev*,int,scalar_t__,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int mlx4_PROMISC(struct mlx4_dev *dev, u32 qpn,
   enum mlx4_steer_type steer, u8 add, u8 port)
{
 return mlx4_cmd(dev, (u64) qpn | (u64) port << 62, (u32) steer, add,
   MLX4_CMD_PROMISC, MLX4_CMD_TIME_CLASS_A,
   MLX4_CMD_WRAPPED);
}
