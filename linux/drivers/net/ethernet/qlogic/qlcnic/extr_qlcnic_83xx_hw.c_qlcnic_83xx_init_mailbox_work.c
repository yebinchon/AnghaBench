
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_mailbox {int status; int work; int * work_q; int completion; int cmd_q; int aen_lock; int queue_lock; struct qlcnic_adapter* adapter; int * ops; } ;
struct qlcnic_hardware_context {struct qlcnic_mailbox* mailbox; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int QLC_83XX_MBX_READY ;
 int * create_singlethread_workqueue (char*) ;
 int init_completion (int *) ;
 int kfree (struct qlcnic_mailbox*) ;
 struct qlcnic_mailbox* kzalloc (int,int ) ;
 int qlcnic_83xx_mailbox_worker ;
 int qlcnic_83xx_mbx_ops ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;

int qlcnic_83xx_init_mailbox_work(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlcnic_mailbox *mbx;

 ahw->mailbox = kzalloc(sizeof(*mbx), GFP_KERNEL);
 if (!ahw->mailbox)
  return -ENOMEM;

 mbx = ahw->mailbox;
 mbx->ops = &qlcnic_83xx_mbx_ops;
 mbx->adapter = adapter;

 spin_lock_init(&mbx->queue_lock);
 spin_lock_init(&mbx->aen_lock);
 INIT_LIST_HEAD(&mbx->cmd_q);
 init_completion(&mbx->completion);

 mbx->work_q = create_singlethread_workqueue("qlcnic_mailbox");
 if (mbx->work_q == ((void*)0)) {
  kfree(mbx);
  return -ENOMEM;
 }

 INIT_WORK(&mbx->work, qlcnic_83xx_mailbox_worker);
 set_bit(QLC_83XX_MBX_READY, &mbx->status);
 return 0;
}
