
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge {struct sched* tx_sched; } ;
struct sched {TYPE_1__* p; int sched_tsk; } ;
struct TYPE_2__ {int skbq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_NPORTS ;
 struct sched* kzalloc (int,int ) ;
 int pr_debug (char*) ;
 int restart_sched ;
 int skb_queue_head_init (int *) ;
 int t1_sched_update_parms (struct sge*,int,int,int) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int tx_sched_init(struct sge *sge)
{
 struct sched *s;
 int i;

 s = kzalloc(sizeof (struct sched), GFP_KERNEL);
 if (!s)
  return -ENOMEM;

 pr_debug("tx_sched_init\n");
 tasklet_init(&s->sched_tsk, restart_sched, (unsigned long) sge);
 sge->tx_sched = s;

 for (i = 0; i < MAX_NPORTS; i++) {
  skb_queue_head_init(&s->p[i].skbq);
  t1_sched_update_parms(sge, i, 1500, 1000);
 }

 return 0;
}
