
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qede_ptp {int lock; TYPE_1__* ops; int * tx_skb; int work; int * clock; } ;
struct qede_dev {struct qede_ptp* ptp; int cdev; } ;
struct TYPE_2__ {int (* disable ) (int ) ;} ;


 int cancel_work_sync (int *) ;
 int dev_kfree_skb_any (int *) ;
 int kfree (struct qede_ptp*) ;
 int ptp_clock_unregister (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (int ) ;

void qede_ptp_disable(struct qede_dev *edev)
{
 struct qede_ptp *ptp;

 ptp = edev->ptp;
 if (!ptp)
  return;

 if (ptp->clock) {
  ptp_clock_unregister(ptp->clock);
  ptp->clock = ((void*)0);
 }




 cancel_work_sync(&ptp->work);
 if (ptp->tx_skb) {
  dev_kfree_skb_any(ptp->tx_skb);
  ptp->tx_skb = ((void*)0);
 }


 spin_lock_bh(&ptp->lock);
 ptp->ops->disable(edev->cdev);
 spin_unlock_bh(&ptp->lock);

 kfree(ptp);
 edev->ptp = ((void*)0);
}
