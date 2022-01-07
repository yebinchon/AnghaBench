
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int rmt_timer1; int timer1_exp; } ;
struct s_smc {TYPE_1__ r; } ;


 int EVENT_RMT ;
 int EV_TOKEN (int ,int) ;
 int FALSE ;
 int smt_timer_start (struct s_smc*,int *,int ,int ) ;

__attribute__((used)) static void start_rmt_timer1(struct s_smc *smc, u_long value, int event)
{
 smc->r.timer1_exp = FALSE ;
 smt_timer_start(smc,&smc->r.rmt_timer1,value,EV_TOKEN(EVENT_RMT,event));
}
