
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_6__ {TYPE_2__* p; int fddiSMTRemoteDisconnectFlag; } ;
struct s_smc {TYPE_3__ mib; TYPE_1__* y; } ;
struct TYPE_5__ {int fddiPORTMy_Type; } ;
struct TYPE_4__ {int pc_mode; } ;


 int AIX_EVENT (struct s_smc*,int ,int ,int ,int ) ;
 int DB_SMT (char*,int,int) ;
 int EC_CONNECT ;
 int EC_DISCONNECT ;
 size_t EVENT_ECM ;
 size_t EVENT_PCM ;
 int FALSE ;
 int FDDI_PATH_TEST ;
 int FDDI_REMOTE_DISCONNECT ;
 int FDDI_REMOTE_SELF_TEST ;
 int FDDI_RING_STATUS ;
 int FDDI_SMT_EVENT ;
 int NUMPHYS ;
 size_t PA ;
 size_t PB ;
 int PC_DISABLE ;
 int PC_ENABLE ;
 int PC_MAINT ;
 int PC_START ;
 int PC_STOP ;
 int PM_PEER ;
 int RS_DISCONNECT ;
 int RS_EVENT ;
 int RS_SET (struct s_smc*,int ) ;
 int TM ;
 int TRUE ;
 int queue_event (struct s_smc*,size_t,int) ;
 int smt_get_event_word (struct s_smc*) ;

int smt_action(struct s_smc *smc, int class, int code, int index)
{
 int event ;
 int port ;
 DB_SMT("SMT: action %d code %d", class, code);
 switch(class) {
 case 135 :
  switch(code) {
  case 134 :
   smc->mib.fddiSMTRemoteDisconnectFlag = FALSE ;
   queue_event(smc,EVENT_ECM,EC_CONNECT) ;
   break ;
  case 130 :
   queue_event(smc,EVENT_ECM,EC_DISCONNECT) ;
   smc->mib.fddiSMTRemoteDisconnectFlag = TRUE ;
   RS_SET(smc,RS_DISCONNECT) ;
   AIX_EVENT(smc, (u_long) FDDI_RING_STATUS, (u_long)
    FDDI_SMT_EVENT, (u_long) FDDI_REMOTE_DISCONNECT,
    smt_get_event_word(smc));
   break ;
  case 129 :
   AIX_EVENT(smc, (u_long) FDDI_RING_STATUS, (u_long)
    FDDI_SMT_EVENT, (u_long) FDDI_PATH_TEST,
    smt_get_event_word(smc));
   break ;
  case 128 :
   AIX_EVENT(smc, (u_long) FDDI_RING_STATUS, (u_long)
    FDDI_SMT_EVENT, (u_long) FDDI_REMOTE_SELF_TEST,
    smt_get_event_word(smc));
   break ;
  case 133 :
   if (smc->y[PA].pc_mode == PM_PEER) {
    RS_SET(smc,RS_EVENT) ;
    queue_event(smc,EVENT_PCM+PA,PC_DISABLE) ;
   }
   break ;
  case 132 :
   if (smc->y[PB].pc_mode == PM_PEER) {
    RS_SET(smc,RS_EVENT) ;
    queue_event(smc,EVENT_PCM+PB,PC_DISABLE) ;
   }
   break ;
  case 131 :
   for (port = 0 ; port < NUMPHYS ; port++) {
    if (smc->mib.p[port].fddiPORTMy_Type != TM)
     continue ;
    RS_SET(smc,RS_EVENT) ;
    queue_event(smc,EVENT_PCM+port,PC_DISABLE) ;
   }
   break ;
  default :
   return 1;
  }
  break ;
 case 141 :
  switch(code) {
  case 139 :
   event = PC_ENABLE ;
   break ;
  case 140 :
   event = PC_DISABLE ;
   break ;
  case 138 :
   event = PC_MAINT ;
   break ;
  case 137 :
   event = PC_START ;
   break ;
  case 136 :
   event = PC_STOP ;
   break ;
  default :
   return 1;
  }
  queue_event(smc,EVENT_PCM+index,event) ;
  break ;
 default :
  return 1;
 }
 return 0;
}
