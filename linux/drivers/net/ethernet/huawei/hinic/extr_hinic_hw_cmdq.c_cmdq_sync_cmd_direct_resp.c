
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct hinic_wq {int wqebb_size; int q_depth; } ;
struct TYPE_2__ {int direct_resp; } ;
struct hinic_cmdq_wqe_lcmd {TYPE_1__ completion; } ;
struct hinic_cmdq_wqe {struct hinic_cmdq_wqe_lcmd wqe_lcmd; } ;
struct hinic_hw_wqe {struct hinic_cmdq_wqe cmdq_wqe; } ;
struct hinic_cmdq_buf {int dummy; } ;
struct hinic_cmdq {int wrapped; int** errcode; int cmdq_lock; struct completion** done; struct hinic_wq* wq; } ;
struct completion {int dummy; } ;
typedef enum hinic_mod_type { ____Placeholder_hinic_mod_type } hinic_mod_type ;


 int ALIGN (int ,int) ;
 int CMDQ_CMD_SYNC_DIRECT_RESP ;
 int CMDQ_TIMEOUT ;
 int EBUSY ;
 int EFAULT ;
 int ETIMEDOUT ;
 int HINIC_CMDQ_SYNC ;
 int HINIC_CMD_ACK_TYPE_CMDQ ;
 scalar_t__ IS_ERR (struct hinic_hw_wqe*) ;
 int WQE_LCMD_SIZE ;
 int cmdq_set_db (struct hinic_cmdq*,int ,int) ;
 int cmdq_set_lcmd_wqe (struct hinic_cmdq_wqe*,int ,struct hinic_cmdq_buf*,int *,int,int ,int,int ,int) ;
 int cmdq_wqe_fill (struct hinic_cmdq_wqe*,struct hinic_cmdq_wqe*) ;
 int cpu_to_be64 (int ) ;
 int hinic_cpu_to_be32 (struct hinic_cmdq_wqe*,int ) ;
 struct hinic_hw_wqe* hinic_get_wqe (struct hinic_wq*,int ,int*) ;
 int init_completion (struct completion*) ;
 int smp_rmb () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion_timeout (struct completion*,int ) ;

__attribute__((used)) static int cmdq_sync_cmd_direct_resp(struct hinic_cmdq *cmdq,
         enum hinic_mod_type mod, u8 cmd,
         struct hinic_cmdq_buf *buf_in,
         u64 *resp)
{
 struct hinic_cmdq_wqe *curr_cmdq_wqe, cmdq_wqe;
 u16 curr_prod_idx, next_prod_idx;
 int errcode, wrapped, num_wqebbs;
 struct hinic_wq *wq = cmdq->wq;
 struct hinic_hw_wqe *hw_wqe;
 struct completion done;


 spin_lock_bh(&cmdq->cmdq_lock);


 hw_wqe = hinic_get_wqe(wq, WQE_LCMD_SIZE, &curr_prod_idx);
 if (IS_ERR(hw_wqe)) {
  spin_unlock_bh(&cmdq->cmdq_lock);
  return -EBUSY;
 }

 curr_cmdq_wqe = &hw_wqe->cmdq_wqe;

 wrapped = cmdq->wrapped;

 num_wqebbs = ALIGN(WQE_LCMD_SIZE, wq->wqebb_size) / wq->wqebb_size;
 next_prod_idx = curr_prod_idx + num_wqebbs;
 if (next_prod_idx >= wq->q_depth) {
  cmdq->wrapped = !cmdq->wrapped;
  next_prod_idx -= wq->q_depth;
 }

 cmdq->errcode[curr_prod_idx] = &errcode;

 init_completion(&done);
 cmdq->done[curr_prod_idx] = &done;

 cmdq_set_lcmd_wqe(&cmdq_wqe, CMDQ_CMD_SYNC_DIRECT_RESP, buf_in, ((void*)0),
     wrapped, HINIC_CMD_ACK_TYPE_CMDQ, mod, cmd,
     curr_prod_idx);


 hinic_cpu_to_be32(&cmdq_wqe, WQE_LCMD_SIZE);


 cmdq_wqe_fill(curr_cmdq_wqe, &cmdq_wqe);

 cmdq_set_db(cmdq, HINIC_CMDQ_SYNC, next_prod_idx);

 spin_unlock_bh(&cmdq->cmdq_lock);

 if (!wait_for_completion_timeout(&done, CMDQ_TIMEOUT)) {
  spin_lock_bh(&cmdq->cmdq_lock);

  if (cmdq->errcode[curr_prod_idx] == &errcode)
   cmdq->errcode[curr_prod_idx] = ((void*)0);

  if (cmdq->done[curr_prod_idx] == &done)
   cmdq->done[curr_prod_idx] = ((void*)0);

  spin_unlock_bh(&cmdq->cmdq_lock);

  return -ETIMEDOUT;
 }

 smp_rmb();

 if (resp) {
  struct hinic_cmdq_wqe_lcmd *wqe_lcmd = &curr_cmdq_wqe->wqe_lcmd;

  *resp = cpu_to_be64(wqe_lcmd->completion.direct_resp);
 }

 if (errcode != 0)
  return -EFAULT;

 return 0;
}
