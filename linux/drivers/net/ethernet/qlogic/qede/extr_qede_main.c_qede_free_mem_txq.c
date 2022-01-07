
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int skbs; int xdp; } ;
struct qede_tx_queue {int tx_pbl; TYPE_1__ sw_tx_ring; scalar_t__ is_xdp; } ;
struct qede_dev {int cdev; TYPE_3__* ops; } ;
struct TYPE_6__ {TYPE_2__* common; } ;
struct TYPE_5__ {int (* chain_free ) (int ,int *) ;} ;


 int kfree (int ) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void qede_free_mem_txq(struct qede_dev *edev, struct qede_tx_queue *txq)
{

 if (txq->is_xdp)
  kfree(txq->sw_tx_ring.xdp);
 else
  kfree(txq->sw_tx_ring.skbs);


 edev->ops->common->chain_free(edev->cdev, &txq->tx_pbl);
}
