
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smt_timer {scalar_t__ tm_delta; struct smt_timer* tm_next; int tm_active; } ;
struct TYPE_2__ {struct smt_timer* st_queue; } ;
struct s_smc {TYPE_1__ t; } ;


 int FALSE ;
 int hwt_stop (struct s_smc*) ;

void smt_timer_stop(struct s_smc *smc, struct smt_timer *timer)
{
 struct smt_timer **prev ;
 struct smt_timer *tm ;




 timer->tm_active = FALSE ;
 if (smc->t.st_queue == timer && !timer->tm_next) {
  hwt_stop(smc) ;
 }
 for (prev = &smc->t.st_queue ; (tm = *prev) ; prev = &tm->tm_next ) {
  if (tm == timer) {
   *prev = tm->tm_next ;
   if (tm->tm_next) {
    tm->tm_next->tm_delta += tm->tm_delta ;
   }
   return ;
  }
 }
}
