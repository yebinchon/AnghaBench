
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct octeon_droq {size_t q_no; } ;
struct octeon_device {TYPE_1__* props; } ;
struct net_device {int dummy; } ;
struct lio {struct cavium_wq* rxq_status_wq; } ;
struct TYPE_4__ {int work; } ;
struct cavium_wq {TYPE_2__ wk; int wq; } ;
struct TYPE_3__ {struct net_device* netdev; } ;


 struct lio* GET_LIO (struct net_device*) ;
 int LIO_OOM_POLL_INTERVAL_MS ;
 int msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,int ) ;

void octeon_schedule_rxq_oom_work(struct octeon_device *oct,
      struct octeon_droq *droq)
{
 struct net_device *netdev = oct->props[0].netdev;
 struct lio *lio = GET_LIO(netdev);
 struct cavium_wq *wq = &lio->rxq_status_wq[droq->q_no];

 queue_delayed_work(wq->wq, &wq->wk.work,
      msecs_to_jiffies(LIO_OOM_POLL_INTERVAL_MS));
}
