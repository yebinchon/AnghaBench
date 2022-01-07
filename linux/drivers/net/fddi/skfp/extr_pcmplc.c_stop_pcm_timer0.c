
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_smc {int dummy; } ;
struct TYPE_2__ {scalar_t__ tm_active; } ;
struct s_phy {TYPE_1__ pcm_timer0; } ;


 int smt_timer_stop (struct s_smc*,TYPE_1__*) ;

__attribute__((used)) static void stop_pcm_timer0(struct s_smc *smc, struct s_phy *phy)
{
 if (phy->pcm_timer0.tm_active)
  smt_timer_stop(smc,&phy->pcm_timer0) ;
}
