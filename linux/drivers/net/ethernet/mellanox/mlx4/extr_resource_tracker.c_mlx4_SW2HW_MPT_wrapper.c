
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int res_id; } ;
struct res_mtt {TYPE_2__ com; int ref_count; } ;
struct res_mpt {struct res_mtt* mtt; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct TYPE_3__ {int mtt_entry_sz; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int buf; } ;
struct mlx4_cmd_info {int dummy; } ;


 int EPERM ;
 int RES_MPT ;
 int RES_MPT_HW ;
 int RES_MTT ;
 int atomic_inc (int *) ;
 int check_mtt_range (struct mlx4_dev*,int,int,int ,struct res_mtt*) ;
 int get_res (struct mlx4_dev*,int,int,int ,struct res_mtt**) ;
 int mlx4_DMA_wrapper (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ;
 int mpt_mask (struct mlx4_dev*) ;
 int mr_get_mtt_addr (int ) ;
 int mr_get_mtt_size (int ) ;
 int mr_get_pd (int ) ;
 scalar_t__ mr_is_bind_enabled (int ) ;
 scalar_t__ mr_is_fmr (int ) ;
 int mr_is_region (int ) ;
 int mr_phys_mpt (int ) ;
 int mr_res_start_move_to (struct mlx4_dev*,int,int,int ,struct res_mpt**) ;
 int put_res (struct mlx4_dev*,int,int ,int ) ;
 int res_abort_move (struct mlx4_dev*,int,int ,int) ;
 int res_end_move (struct mlx4_dev*,int,int ,int) ;

int mlx4_SW2HW_MPT_wrapper(struct mlx4_dev *dev, int slave,
      struct mlx4_vhcr *vhcr,
      struct mlx4_cmd_mailbox *inbox,
      struct mlx4_cmd_mailbox *outbox,
      struct mlx4_cmd_info *cmd)
{
 int err;
 int index = vhcr->in_modifier;
 struct res_mtt *mtt;
 struct res_mpt *mpt = ((void*)0);
 int mtt_base = mr_get_mtt_addr(inbox->buf) / dev->caps.mtt_entry_sz;
 int phys;
 int id;
 u32 pd;
 int pd_slave;

 id = index & mpt_mask(dev);
 err = mr_res_start_move_to(dev, slave, id, RES_MPT_HW, &mpt);
 if (err)
  return err;


 if (!mr_is_region(inbox->buf)) {
  err = -EPERM;
  goto ex_abort;
 }


 pd = mr_get_pd(inbox->buf);
 pd_slave = (pd >> 17) & 0x7f;
 if (pd_slave != 0 && --pd_slave != slave) {
  err = -EPERM;
  goto ex_abort;
 }

 if (mr_is_fmr(inbox->buf)) {

  if (mr_is_bind_enabled(inbox->buf)) {
   err = -EPERM;
   goto ex_abort;
  }

  if (!mr_is_region(inbox->buf)) {
   err = -EPERM;
   goto ex_abort;
  }
 }

 phys = mr_phys_mpt(inbox->buf);
 if (!phys) {
  err = get_res(dev, slave, mtt_base, RES_MTT, &mtt);
  if (err)
   goto ex_abort;

  err = check_mtt_range(dev, slave, mtt_base,
          mr_get_mtt_size(inbox->buf), mtt);
  if (err)
   goto ex_put;

  mpt->mtt = mtt;
 }

 err = mlx4_DMA_wrapper(dev, slave, vhcr, inbox, outbox, cmd);
 if (err)
  goto ex_put;

 if (!phys) {
  atomic_inc(&mtt->ref_count);
  put_res(dev, slave, mtt->com.res_id, RES_MTT);
 }

 res_end_move(dev, slave, RES_MPT, id);
 return 0;

ex_put:
 if (!phys)
  put_res(dev, slave, mtt->com.res_id, RES_MTT);
ex_abort:
 res_abort_move(dev, slave, RES_MPT, id);

 return err;
}
