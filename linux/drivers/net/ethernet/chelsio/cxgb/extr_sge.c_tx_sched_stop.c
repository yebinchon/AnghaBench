
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge {struct sched* tx_sched; } ;
struct sched {size_t port; TYPE_1__* p; int sched_tsk; } ;
struct TYPE_2__ {int skbq; } ;


 int MAX_NPORTS ;
 int __skb_queue_purge (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void tx_sched_stop(struct sge *sge)
{
 struct sched *s = sge->tx_sched;
 int i;

 tasklet_kill(&s->sched_tsk);

 for (i = 0; i < MAX_NPORTS; i++)
  __skb_queue_purge(&s->p[s->port].skbq);
}
