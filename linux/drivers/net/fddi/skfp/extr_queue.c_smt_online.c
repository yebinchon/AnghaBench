
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int fddiSMTCF_State; } ;
struct s_smc {TYPE_1__ mib; } ;


 int EC_CONNECT ;
 int EC_DISCONNECT ;
 int EVENT_ECM ;
 int ev_dispatcher (struct s_smc*) ;
 int queue_event (struct s_smc*,int ,int ) ;

u_short smt_online(struct s_smc *smc, int on)
{
 queue_event(smc,EVENT_ECM,on ? EC_CONNECT : EC_DISCONNECT) ;
 ev_dispatcher(smc) ;
 return smc->mib.fddiSMTCF_State;
}
