
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ from_state; } ;
struct res_eq {TYPE_1__ com; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;


 int EINVAL ;
 int RES_EQ ;
 scalar_t__ RES_EQ_HW ;
 int get_res (struct mlx4_dev*,int,int,int ,struct res_eq**) ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 int put_res (struct mlx4_dev*,int,int,int ) ;

int mlx4_QUERY_EQ_wrapper(struct mlx4_dev *dev, int slave,
     struct mlx4_vhcr *vhcr,
     struct mlx4_cmd_mailbox *inbox,
     struct mlx4_cmd_mailbox *outbox,
     struct mlx4_cmd_info *cmd)
{
 int eqn = vhcr->in_modifier;
 int res_id = eqn | (slave << 10);
 struct res_eq *eq;
 int err;

 err = get_res(dev, slave, res_id, RES_EQ, &eq);
 if (err)
  return err;

 if (eq->com.from_state != RES_EQ_HW) {
  err = -EINVAL;
  goto ex_put;
 }

 err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);

ex_put:
 put_res(dev, slave, res_id, RES_EQ);
 return err;
}
