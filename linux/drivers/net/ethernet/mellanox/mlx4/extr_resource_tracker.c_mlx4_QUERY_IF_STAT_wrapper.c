
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;


 int RES_COUNTER ;
 int get_res (struct mlx4_dev*,int,int,int ,int *) ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 int put_res (struct mlx4_dev*,int,int,int ) ;

int mlx4_QUERY_IF_STAT_wrapper(struct mlx4_dev *dev, int slave,
          struct mlx4_vhcr *vhcr,
          struct mlx4_cmd_mailbox *inbox,
          struct mlx4_cmd_mailbox *outbox,
          struct mlx4_cmd_info *cmd)
{
 int err;
 int index = vhcr->in_modifier & 0xffff;

 err = get_res(dev, slave, index, RES_COUNTER, ((void*)0));
 if (err)
  return err;

 err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
 put_res(dev, slave, index, RES_COUNTER);
 return err;
}
