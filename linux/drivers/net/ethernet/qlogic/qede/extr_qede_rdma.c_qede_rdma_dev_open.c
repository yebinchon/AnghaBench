
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;


 int _qede_rdma_dev_open (struct qede_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qede_rdma_supported (struct qede_dev*) ;
 int qedr_dev_list_lock ;

__attribute__((used)) static void qede_rdma_dev_open(struct qede_dev *edev)
{
 if (!qede_rdma_supported(edev))
  return;

 mutex_lock(&qedr_dev_list_lock);
 _qede_rdma_dev_open(edev);
 mutex_unlock(&qedr_dev_list_lock);
}
