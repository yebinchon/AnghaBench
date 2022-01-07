
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_device {int num_oqs; } ;
struct net_device {int dummy; } ;
struct lio {struct cavium_wq* rxq_status_wq; struct octeon_device* oct_dev; } ;
struct TYPE_2__ {int work; } ;
struct cavium_wq {int * wq; TYPE_1__ wk; } ;


 struct lio* GET_LIO (struct net_device*) ;
 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;

void cleanup_rx_oom_poll_fn(struct net_device *netdev)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = lio->oct_dev;
 struct cavium_wq *wq;
 int q_no;

 for (q_no = 0; q_no < oct->num_oqs; q_no++) {
  wq = &lio->rxq_status_wq[q_no];
  if (wq->wq) {
   cancel_delayed_work_sync(&wq->wk.work);
   flush_workqueue(wq->wq);
   destroy_workqueue(wq->wq);
   wq->wq = ((void*)0);
  }
 }
}
