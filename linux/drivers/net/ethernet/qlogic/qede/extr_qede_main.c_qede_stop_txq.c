
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_tx_queue {int handle; int tx_db; int doorbell_addr; } ;
struct qede_dev {int cdev; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* q_tx_stop ) (int ,int,int ) ;TYPE_1__* common; } ;
struct TYPE_3__ {int (* db_recovery_del ) (int ,int ,int *) ;} ;


 int stub1 (int ,int ,int *) ;
 int stub2 (int ,int,int ) ;

__attribute__((used)) static int qede_stop_txq(struct qede_dev *edev,
    struct qede_tx_queue *txq, int rss_id)
{

 edev->ops->common->db_recovery_del(edev->cdev, txq->doorbell_addr,
        &txq->tx_db);

 return edev->ops->q_tx_stop(edev->cdev, rss_id, txq->handle);
}
