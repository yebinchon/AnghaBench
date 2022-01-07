
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rdma_wq; } ;
struct qede_dev {TYPE_1__ rdma_info; } ;


 int destroy_workqueue (int ) ;
 int qede_rdma_cleanup_event (struct qede_dev*) ;

__attribute__((used)) static void qede_rdma_destroy_wq(struct qede_dev *edev)
{
 qede_rdma_cleanup_event(edev);
 destroy_workqueue(edev->rdma_info.rdma_wq);
}
