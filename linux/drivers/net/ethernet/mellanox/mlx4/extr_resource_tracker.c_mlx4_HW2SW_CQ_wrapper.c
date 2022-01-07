
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct res_cq {TYPE_1__* mtt; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;
struct TYPE_2__ {int ref_count; } ;


 int RES_CQ ;
 int RES_CQ_ALLOCATED ;
 int atomic_dec (int *) ;
 int cq_res_start_move_to (struct mlx4_dev*,int,int,int ,struct res_cq**) ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 int res_abort_move (struct mlx4_dev*,int,int ,int) ;
 int res_end_move (struct mlx4_dev*,int,int ,int) ;

int mlx4_HW2SW_CQ_wrapper(struct mlx4_dev *dev, int slave,
     struct mlx4_vhcr *vhcr,
     struct mlx4_cmd_mailbox *inbox,
     struct mlx4_cmd_mailbox *outbox,
     struct mlx4_cmd_info *cmd)
{
 int err;
 int cqn = vhcr->in_modifier;
 struct res_cq *cq = ((void*)0);

 err = cq_res_start_move_to(dev, slave, cqn, RES_CQ_ALLOCATED, &cq);
 if (err)
  return err;
 err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
 if (err)
  goto out_move;
 atomic_dec(&cq->mtt->ref_count);
 res_end_move(dev, slave, RES_CQ, cqn);
 return 0;

out_move:
 res_abort_move(dev, slave, RES_CQ, cqn);
 return err;
}
