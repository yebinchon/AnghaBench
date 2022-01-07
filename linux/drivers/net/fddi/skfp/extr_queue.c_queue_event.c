
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ev_get; TYPE_1__* ev_put; TYPE_1__* ev_queue; } ;
struct s_smc {TYPE_2__ q; } ;
struct TYPE_3__ {int class; int event; } ;


 size_t MAX_EVENT ;
 int PRINTF (char*,int,int) ;
 int SMT_E0137 ;
 int SMT_E0137_MSG ;
 int SMT_ERR_LOG (struct s_smc*,int ,int ) ;

void queue_event(struct s_smc *smc, int class, int event)
{
 PRINTF("queue class %d event %d\n",class,event) ;
 smc->q.ev_put->class = class ;
 smc->q.ev_put->event = event ;
 if (++smc->q.ev_put == &smc->q.ev_queue[MAX_EVENT])
  smc->q.ev_put = smc->q.ev_queue ;

 if (smc->q.ev_put == smc->q.ev_get) {
  SMT_ERR_LOG(smc,SMT_E0137, SMT_E0137_MSG) ;
 }
}
