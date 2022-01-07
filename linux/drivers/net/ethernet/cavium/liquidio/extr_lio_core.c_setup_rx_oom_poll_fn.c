
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct octeon_device {int num_oqs; TYPE_4__* pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {TYPE_2__* rxpciq; } ;
struct lio {struct cavium_wq* rxq_status_wq; TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_10__ {int ctxul; struct lio* ctxptr; int work; } ;
struct cavium_wq {TYPE_5__ wk; int wq; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_6__ {int q_no; } ;
struct TYPE_7__ {TYPE_1__ s; } ;


 int ENOMEM ;
 struct lio* GET_LIO (struct net_device*) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int ,int ) ;
 int dev_err (int *,char*) ;
 int octnet_poll_check_rxq_oom_status ;

int setup_rx_oom_poll_fn(struct net_device *netdev)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;
 struct cavium_wq *wq;
 int q, q_no;

 for (q = 0; q < oct->num_oqs; q++) {
  q_no = lio->linfo.rxpciq[q].s.q_no;
  wq = &lio->rxq_status_wq[q_no];
  wq->wq = alloc_workqueue("rxq-oom-status",
      WQ_MEM_RECLAIM, 0);
  if (!wq->wq) {
   dev_err(&oct->pci_dev->dev, "unable to create cavium rxq oom status wq\n");
   return -ENOMEM;
  }

  INIT_DELAYED_WORK(&wq->wk.work,
      octnet_poll_check_rxq_oom_status);
  wq->wk.ctxptr = lio;
  wq->wk.ctxul = q_no;
 }

 return 0;
}
