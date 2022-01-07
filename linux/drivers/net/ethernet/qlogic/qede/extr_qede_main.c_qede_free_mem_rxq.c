
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_rx_queue {int rx_comp_ring; int rx_bd_ring; int sw_rx_ring; } ;
struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* chain_free ) (int ,int *) ;} ;


 int kfree (int ) ;
 int qede_free_rx_buffers (struct qede_dev*,struct qede_rx_queue*) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;

__attribute__((used)) static void qede_free_mem_rxq(struct qede_dev *edev, struct qede_rx_queue *rxq)
{

 qede_free_rx_buffers(edev, rxq);


 kfree(rxq->sw_rx_ring);


 edev->ops->common->chain_free(edev->cdev, &rxq->rx_bd_ring);
 edev->ops->common->chain_free(edev->cdev, &rxq->rx_comp_ring);
}
