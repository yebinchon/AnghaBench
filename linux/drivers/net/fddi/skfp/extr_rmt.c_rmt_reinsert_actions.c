
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int EC_CONNECT ;
 int EC_DISCONNECT ;
 int EVENT_ECM ;
 int queue_event (struct s_smc*,int ,int ) ;

__attribute__((used)) static void rmt_reinsert_actions(struct s_smc *smc)
{
 queue_event(smc,EVENT_ECM,EC_DISCONNECT) ;
 queue_event(smc,EVENT_ECM,EC_CONNECT) ;
}
