
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exp_recovery; int entry; int * qedr_dev; } ;
struct qede_dev {TYPE_1__ rdma_info; } ;


 int _qede_rdma_dev_remove (struct qede_dev*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qede_rdma_destroy_wq (struct qede_dev*) ;
 int qede_rdma_supported (struct qede_dev*) ;
 int qedr_dev_list_lock ;

void qede_rdma_dev_remove(struct qede_dev *edev, bool recovery)
{
 if (!qede_rdma_supported(edev))
  return;


 if (!recovery) {
  qede_rdma_destroy_wq(edev);
  mutex_lock(&qedr_dev_list_lock);
  if (!edev->rdma_info.exp_recovery)
   _qede_rdma_dev_remove(edev);
  edev->rdma_info.qedr_dev = ((void*)0);
  list_del(&edev->rdma_info.entry);
  mutex_unlock(&qedr_dev_list_lock);
 } else {
  if (!edev->rdma_info.exp_recovery) {
   mutex_lock(&qedr_dev_list_lock);
   _qede_rdma_dev_remove(edev);
   mutex_unlock(&qedr_dev_list_lock);
  }
  edev->rdma_info.exp_recovery = 1;
 }
}
