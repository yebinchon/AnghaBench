
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sas; } ;
struct s_smc {TYPE_2__* y; TYPE_1__ s; } ;
struct TYPE_4__ {scalar_t__ cem_pst; scalar_t__ wc_flag; scalar_t__ cf_join; } ;


 scalar_t__ CEM_PST_DOWN ;
 scalar_t__ CEM_PST_HOLD ;
 scalar_t__ CEM_PST_UP ;
 int CF_JOIN ;
 scalar_t__ EVENT_PCM ;
 int PA ;
 int PB ;
 int PC_START ;
 scalar_t__ SMT_DAS ;
 int queue_event (struct s_smc*,int,int ) ;

__attribute__((used)) static void cem_priv_state(struct s_smc *smc, int event)

{
 int np;
 int i;


 if (smc->s.sas != SMT_DAS )
  return ;

 np = event - CF_JOIN;

 if (np != PA && np != PB) {
  return ;
 }

 if (smc->y[np].cf_join) {
  smc->y[np].cem_pst = CEM_PST_UP ;
 } else if (!smc->y[np].wc_flag) {

  smc->y[np].cem_pst = CEM_PST_DOWN ;
 }




 for (i = 0 ; i < 2 ; i ++ ) {

  if ( smc->y[i].cem_pst == CEM_PST_HOLD && !smc->y[i].wc_flag ) {
   smc->y[i].cem_pst = CEM_PST_DOWN;
   queue_event(smc,(int)(EVENT_PCM+i),PC_START) ;
  }
  if ( smc->y[i].cem_pst == CEM_PST_UP && smc->y[i].wc_flag ) {
   smc->y[i].cem_pst = CEM_PST_HOLD;
   queue_event(smc,(int)(EVENT_PCM+i),PC_START) ;
  }
  if ( smc->y[i].cem_pst == CEM_PST_DOWN && smc->y[i].wc_flag ) {




   smc->y[i].cem_pst = CEM_PST_HOLD;
  }
 }
 return ;
}
