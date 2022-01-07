
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;


 int QEDE_DOWN ;
 int qede_rdma_add_event (struct qede_dev*,int ) ;

void qede_rdma_dev_event_close(struct qede_dev *edev)
{
 qede_rdma_add_event(edev, QEDE_DOWN);
}
