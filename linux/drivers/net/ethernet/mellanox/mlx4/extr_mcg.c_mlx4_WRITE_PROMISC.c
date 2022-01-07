
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; } ;


 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRITE_MCG ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int,int ,int ,int ) ;

__attribute__((used)) static int mlx4_WRITE_PROMISC(struct mlx4_dev *dev, u8 port, u8 steer,
         struct mlx4_cmd_mailbox *mailbox)
{
 u32 in_mod;

 in_mod = (u32) port << 16 | steer << 1;
 return mlx4_cmd(dev, mailbox->dma, in_mod, 0x1,
   MLX4_CMD_WRITE_MCG, MLX4_CMD_TIME_CLASS_A,
   MLX4_CMD_NATIVE);
}
