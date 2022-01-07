
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qede_rdma_event_work {int event; int work; struct qede_dev* ptr; } ;
struct TYPE_2__ {int rdma_wq; int qedr_dev; scalar_t__ exp_recovery; } ;
struct qede_dev {TYPE_1__ rdma_info; } ;
typedef enum qede_rdma_event { ____Placeholder_qede_rdma_event } qede_rdma_event ;


 int INIT_WORK (int *,int ) ;
 struct qede_rdma_event_work* qede_rdma_get_free_event_node (struct qede_dev*) ;
 int qede_rdma_handle_event ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void qede_rdma_add_event(struct qede_dev *edev,
    enum qede_rdma_event event)
{
 struct qede_rdma_event_work *event_node;


 if (edev->rdma_info.exp_recovery)
  return;

 if (!edev->rdma_info.qedr_dev)
  return;

 event_node = qede_rdma_get_free_event_node(edev);
 if (!event_node)
  return;

 event_node->event = event;
 event_node->ptr = edev;

 INIT_WORK(&event_node->work, qede_rdma_handle_event);
 queue_work(edev->rdma_info.rdma_wq, &event_node->work);
}
