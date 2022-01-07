
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entry; } ;
struct qede_dev {TYPE_1__ rdma_info; } ;


 int INIT_LIST_HEAD (int *) ;
 int _qede_rdma_dev_add (struct qede_dev*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qede_rdma_create_wq (struct qede_dev*) ;
 int qede_rdma_supported (struct qede_dev*) ;
 int qedr_dev_list ;
 int qedr_dev_list_lock ;

int qede_rdma_dev_add(struct qede_dev *edev, bool recovery)
{
 int rc;

 if (!qede_rdma_supported(edev))
  return 0;


 if (recovery)
  return 0;

 rc = qede_rdma_create_wq(edev);
 if (rc)
  return rc;

 INIT_LIST_HEAD(&edev->rdma_info.entry);
 mutex_lock(&qedr_dev_list_lock);
 list_add_tail(&edev->rdma_info.entry, &qedr_dev_list);
 _qede_rdma_dev_add(edev);
 mutex_unlock(&qedr_dev_list_lock);

 return rc;
}
