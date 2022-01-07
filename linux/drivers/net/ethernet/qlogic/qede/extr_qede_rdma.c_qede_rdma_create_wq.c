
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rdma_wq; int rdma_event_list; } ;
struct qede_dev {TYPE_1__ rdma_info; } ;


 int DP_NOTICE (struct qede_dev*,char*) ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int create_singlethread_workqueue (char*) ;

__attribute__((used)) static int qede_rdma_create_wq(struct qede_dev *edev)
{
 INIT_LIST_HEAD(&edev->rdma_info.rdma_event_list);
 edev->rdma_info.rdma_wq = create_singlethread_workqueue("rdma_wq");
 if (!edev->rdma_info.rdma_wq) {
  DP_NOTICE(edev, "qedr: Could not create workqueue\n");
  return -ENOMEM;
 }

 return 0;
}
