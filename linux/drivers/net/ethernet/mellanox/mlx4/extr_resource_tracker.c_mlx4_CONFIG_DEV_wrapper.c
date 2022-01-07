
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx4_vhcr {int op_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;


 int EPERM ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;

int mlx4_CONFIG_DEV_wrapper(struct mlx4_dev *dev, int slave,
       struct mlx4_vhcr *vhcr,
       struct mlx4_cmd_mailbox *inbox,
       struct mlx4_cmd_mailbox *outbox,
       struct mlx4_cmd_info *cmd)
{
 int err;
 u8 get = vhcr->op_modifier;

 if (get != 1)
  return -EPERM;

 err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);

 return err;
}
