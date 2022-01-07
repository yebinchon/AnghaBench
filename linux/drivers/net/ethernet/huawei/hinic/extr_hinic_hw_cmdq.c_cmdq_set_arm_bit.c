
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hinic_wq {int wqebb_size; scalar_t__ q_depth; } ;
struct hinic_cmdq_wqe {int dummy; } ;
struct hinic_hw_wqe {struct hinic_cmdq_wqe cmdq_wqe; } ;
struct hinic_cmdq {int wrapped; int cmdq_lock; struct hinic_wq* wq; } ;


 int ALIGN (int ,int) ;
 int CMDQ_CMD_SYNC_DIRECT_RESP ;
 int CMDQ_SET_ARM_CMD ;
 int EBUSY ;
 int HINIC_CMDQ_SYNC ;
 int HINIC_CMD_ACK_TYPE_CMDQ ;
 int HINIC_MOD_COMM ;
 scalar_t__ IS_ERR (struct hinic_hw_wqe*) ;
 int WQE_SCMD_SIZE ;
 int cmdq_set_db (struct hinic_cmdq*,int ,scalar_t__) ;
 int cmdq_set_direct_wqe (struct hinic_cmdq_wqe*,int ,void*,scalar_t__,int *,int,int ,int ,int ,scalar_t__) ;
 int cmdq_wqe_fill (struct hinic_cmdq_wqe*,struct hinic_cmdq_wqe*) ;
 int hinic_cpu_to_be32 (struct hinic_cmdq_wqe*,int ) ;
 struct hinic_hw_wqe* hinic_get_wqe (struct hinic_wq*,int ,scalar_t__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cmdq_set_arm_bit(struct hinic_cmdq *cmdq, void *buf_in,
       u16 in_size)
{
 struct hinic_cmdq_wqe *curr_cmdq_wqe, cmdq_wqe;
 u16 curr_prod_idx, next_prod_idx;
 struct hinic_wq *wq = cmdq->wq;
 struct hinic_hw_wqe *hw_wqe;
 int wrapped, num_wqebbs;


 spin_lock(&cmdq->cmdq_lock);


 hw_wqe = hinic_get_wqe(wq, WQE_SCMD_SIZE, &curr_prod_idx);
 if (IS_ERR(hw_wqe)) {
  spin_unlock(&cmdq->cmdq_lock);
  return -EBUSY;
 }

 curr_cmdq_wqe = &hw_wqe->cmdq_wqe;

 wrapped = cmdq->wrapped;

 num_wqebbs = ALIGN(WQE_SCMD_SIZE, wq->wqebb_size) / wq->wqebb_size;
 next_prod_idx = curr_prod_idx + num_wqebbs;
 if (next_prod_idx >= wq->q_depth) {
  cmdq->wrapped = !cmdq->wrapped;
  next_prod_idx -= wq->q_depth;
 }

 cmdq_set_direct_wqe(&cmdq_wqe, CMDQ_CMD_SYNC_DIRECT_RESP, buf_in,
       in_size, ((void*)0), wrapped, HINIC_CMD_ACK_TYPE_CMDQ,
       HINIC_MOD_COMM, CMDQ_SET_ARM_CMD, curr_prod_idx);


 hinic_cpu_to_be32(&cmdq_wqe, WQE_SCMD_SIZE);


 cmdq_wqe_fill(curr_cmdq_wqe, &cmdq_wqe);

 cmdq_set_db(cmdq, HINIC_CMDQ_SYNC, next_prod_idx);

 spin_unlock(&cmdq->cmdq_lock);
 return 0;
}
