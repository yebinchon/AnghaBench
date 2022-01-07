
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_mailbox {unsigned long num_cmds; int queue_lock; int work; int work_q; int cmd_q; int status; } ;
struct qlcnic_cmd_args {unsigned long total_cmds; int list; int rsp_opcode; int completion; int rsp_status; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {struct qlcnic_mailbox* mailbox; } ;


 int EBUSY ;
 int QLC_83XX_MBX_READY ;
 int QLC_83XX_MBX_RESPONSE_UNKNOWN ;
 int QLC_83XX_MBX_RESPONSE_WAIT ;
 unsigned long QLC_83XX_MBX_TIMEOUT ;
 int atomic_set (int *,int ) ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_83xx_enqueue_mbx_cmd(struct qlcnic_adapter *adapter,
           struct qlcnic_cmd_args *cmd,
           unsigned long *timeout)
{
 struct qlcnic_mailbox *mbx = adapter->ahw->mailbox;

 if (test_bit(QLC_83XX_MBX_READY, &mbx->status)) {
  atomic_set(&cmd->rsp_status, QLC_83XX_MBX_RESPONSE_WAIT);
  init_completion(&cmd->completion);
  cmd->rsp_opcode = QLC_83XX_MBX_RESPONSE_UNKNOWN;

  spin_lock_bh(&mbx->queue_lock);

  list_add_tail(&cmd->list, &mbx->cmd_q);
  mbx->num_cmds++;
  cmd->total_cmds = mbx->num_cmds;
  *timeout = cmd->total_cmds * QLC_83XX_MBX_TIMEOUT;
  queue_work(mbx->work_q, &mbx->work);

  spin_unlock_bh(&mbx->queue_lock);

  return 0;
 }

 return -EBUSY;
}
