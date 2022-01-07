
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct s_smc {int dummy; } ;
struct s_phy {scalar_t__ np; int pcm_timer0; int timer0_exp; } ;


 scalar_t__ EVENT_PCM ;
 int EV_TOKEN (scalar_t__,int) ;
 int FALSE ;
 int smt_timer_start (struct s_smc*,int *,int ,int ) ;

__attribute__((used)) static void start_pcm_timer0(struct s_smc *smc, u_long value, int event,
        struct s_phy *phy)
{
 phy->timer0_exp = FALSE ;
 smt_timer_start(smc,&phy->pcm_timer0,value,
  EV_TOKEN(EVENT_PCM+phy->np,event)) ;
}
