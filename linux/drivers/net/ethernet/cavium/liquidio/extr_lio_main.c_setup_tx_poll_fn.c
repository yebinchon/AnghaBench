
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct octeon_device {TYPE_1__* pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int work; struct lio* ctxptr; } ;
struct TYPE_6__ {TYPE_2__ wk; int wq; } ;
struct lio {TYPE_3__ txq_status_wq; struct octeon_device* oct_dev; } ;
struct TYPE_4__ {int dev; } ;


 struct lio* GET_LIO (struct net_device*) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int ,int ) ;
 int dev_err (int *,char*) ;
 int msecs_to_jiffies (int) ;
 int octnet_poll_check_txq_status ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static inline int setup_tx_poll_fn(struct net_device *netdev)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;

 lio->txq_status_wq.wq = alloc_workqueue("txq-status",
      WQ_MEM_RECLAIM, 0);
 if (!lio->txq_status_wq.wq) {
  dev_err(&oct->pci_dev->dev, "unable to create cavium txq status wq\n");
  return -1;
 }
 INIT_DELAYED_WORK(&lio->txq_status_wq.wk.work,
     octnet_poll_check_txq_status);
 lio->txq_status_wq.wk.ctxptr = lio;
 queue_delayed_work(lio->txq_status_wq.wq,
      &lio->txq_status_wq.wk.work, msecs_to_jiffies(1));
 return 0;
}
