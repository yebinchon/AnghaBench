
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_queue {int index; TYPE_1__* lif; int stop; } ;
struct TYPE_2__ {int netdev; } ;


 scalar_t__ ionic_q_has_space (struct ionic_queue*,int) ;
 int netif_stop_subqueue (int ,int ) ;
 int netif_wake_subqueue (int ,int ) ;
 int smp_rmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ionic_maybe_stop_tx(struct ionic_queue *q, int ndescs)
{
 int stopped = 0;

 if (unlikely(!ionic_q_has_space(q, ndescs))) {
  netif_stop_subqueue(q->lif->netdev, q->index);
  q->stop++;
  stopped = 1;


  smp_rmb();
  if (ionic_q_has_space(q, ndescs)) {
   netif_wake_subqueue(q->lif->netdev, q->index);
   stopped = 0;
  }
 }

 return stopped;
}
