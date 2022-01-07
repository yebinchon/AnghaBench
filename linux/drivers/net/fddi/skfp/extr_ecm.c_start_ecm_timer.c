
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int ecm_timer; } ;
struct s_smc {TYPE_1__ e; } ;


 int EVENT_ECM ;
 int EV_TOKEN (int ,int) ;
 int smt_timer_start (struct s_smc*,int *,int ,int ) ;

__attribute__((used)) static void start_ecm_timer(struct s_smc *smc, u_long value, int event)
{
 smt_timer_start(smc,&smc->e.ecm_timer,value,EV_TOKEN(EVENT_ECM,event));
}
