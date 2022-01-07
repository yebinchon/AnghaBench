
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_mailbox {int work_q; int work; int completion; int status; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {struct qlcnic_mailbox* mailbox; } ;


 int QLC_83XX_MBX_READY ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 int flush_workqueue (int ) ;
 int qlcnic_83xx_flush_mbx_queue (struct qlcnic_adapter*) ;

void qlcnic_83xx_detach_mailbox_work(struct qlcnic_adapter *adapter)
{
 struct qlcnic_mailbox *mbx = adapter->ahw->mailbox;

 if (!mbx)
  return;

 clear_bit(QLC_83XX_MBX_READY, &mbx->status);
 complete(&mbx->completion);
 cancel_work_sync(&mbx->work);
 flush_workqueue(mbx->work_q);
 qlcnic_83xx_flush_mbx_queue(adapter);
}
