
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_mailbox {int work_q; } ;


 int destroy_workqueue (int ) ;
 int kfree (struct qlcnic_mailbox*) ;

void qlcnic_83xx_free_mailbox(struct qlcnic_mailbox *mbx)
{
 if (!mbx)
  return;

 destroy_workqueue(mbx->work_q);
 kfree(mbx);
}
