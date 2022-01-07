
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {scalar_t__ please_reconnect; int smt_last_lem; int smt_last_notify; int smt_tvu; int smt_tvd; int* last_tok_time; int smt_timer; scalar_t__* pend; } ;
struct TYPE_5__ {int fddiSMTTT_Notify; struct fddi_mib_m* m; } ;
struct s_smc {TYPE_1__ sm; TYPE_2__ mib; struct s_phy* y; } ;
struct s_phy {TYPE_3__* mib; scalar_t__ np; } ;
struct fddi_mib_m {int fddiMACLost_Ct; int fddiMACOld_Lost_Ct; int fddiMACError_Ct; int fddiMACOld_Error_Ct; int fddiMACFrame_Ct; int fddiMACOld_Frame_Ct; scalar_t__ fddiMACFrameErrorRatio; scalar_t__ fddiMACFrameErrorThreshold; int fddiMACFrameErrorFlag; int fddiMACNotCopied_Ct; int fddiMACOld_NotCopied_Ct; int fddiMACCopied_Ct; int fddiMACOld_Copied_Ct; scalar_t__ fddiMACNotCopiedRatio; scalar_t__ fddiMACNotCopiedThreshold; int fddiMACNotCopiedFlag; void* fddiMACDownstreamNbr; void* fddiMACOldDownstreamNbr; int fddiMACUNDA_Flag; void* fddiMACUpstreamNbr; void* fddiMACOldUpstreamNbr; } ;
struct TYPE_6__ {int fddiPORTEBError_Ct; int fddiPORTOldEBError_Ct; int fddiPORTHardwarePresent; } ;


 int DB_SMT (char*) ;
 int EC_CONNECT ;
 int EVENT_ECM ;
 int EVENT_SMT ;
 int EV_TOKEN (int ,int ) ;
 int FALSE ;
 int FC_SMT_NSA ;
 int INDEX_MAC ;
 scalar_t__ INDEX_PORT ;
 size_t MAC0 ;
 int NUMMACS ;
 int NUMPHYS ;
 int SMT_COND_MAC_FRAME_ERROR ;
 int SMT_COND_MAC_NOT_COPIED ;
 int SMT_COND_PORT_EB_ERROR ;
 int SMT_EVENT_MAC_NEIGHBOR_CHANGE ;
 int SMT_REQUEST ;
 size_t SMT_TID_NIF ;
 void* SMT_Unknown ;
 int SM_FAST ;
 int SM_TIMER ;
 int TICKS_PER_SECOND ;
 void* div_ratio (int,int) ;
 int ess_timer_poll (struct s_smc*) ;
 int fddi_broadcast ;
 int is_equal (void**,void**) ;
 int mac_update_counter (struct s_smc*) ;
 int queue_event (struct s_smc*,int ,int ) ;
 int sba_timer_poll (struct s_smc*) ;
 int sm_lem_evaluate (struct s_smc*) ;
 int smt_emulate_token_ct (struct s_smc*,int) ;
 scalar_t__ smt_get_tid (struct s_smc*) ;
 int smt_get_time () ;
 int smt_send_nif (struct s_smc*,int *,int ,scalar_t__,int ,int ) ;
 int smt_srf_event (struct s_smc*,int ,int,int) ;
 int smt_start_watchdog (struct s_smc*) ;
 int smt_timer_poll (struct s_smc*) ;
 int smt_timer_start (struct s_smc*,int *,int,int ) ;
 int update_dac (struct s_smc*,int ) ;

void smt_event(struct s_smc *smc, int event)
{
 u_long time ;

 int i ;



 if (smc->sm.please_reconnect) {
  smc->sm.please_reconnect -- ;
  if (smc->sm.please_reconnect == 0) {

   queue_event(smc,EVENT_ECM,EC_CONNECT) ;
  }
 }

 if (event == SM_FAST)
  return ;







 smt_timer_poll(smc) ;
 smt_start_watchdog(smc) ;
 smt_srf_event(smc,0,0,0) ;



 time = smt_get_time() ;

 if (time - smc->sm.smt_last_lem >= TICKS_PER_SECOND*8) {




  struct fddi_mib_m *mib ;
  u_long upper ;
  u_long lower ;
  int cond ;
  int port;
  struct s_phy *phy ;



  sm_lem_evaluate(smc) ;
  smc->sm.smt_last_lem = time ;





  mac_update_counter(smc) ;
  mib = smc->mib.m ;
  upper =
  (mib->fddiMACLost_Ct - mib->fddiMACOld_Lost_Ct) +
  (mib->fddiMACError_Ct - mib->fddiMACOld_Error_Ct) ;
  lower =
  (mib->fddiMACFrame_Ct - mib->fddiMACOld_Frame_Ct) +
  (mib->fddiMACLost_Ct - mib->fddiMACOld_Lost_Ct) ;
  mib->fddiMACFrameErrorRatio = div_ratio(upper,lower) ;

  cond =
   ((!mib->fddiMACFrameErrorThreshold &&
   mib->fddiMACError_Ct != mib->fddiMACOld_Error_Ct) ||
   (mib->fddiMACFrameErrorRatio >
   mib->fddiMACFrameErrorThreshold)) ;

  if (cond != mib->fddiMACFrameErrorFlag)
   smt_srf_event(smc,SMT_COND_MAC_FRAME_ERROR,
    INDEX_MAC,cond) ;

  upper =
  (mib->fddiMACNotCopied_Ct - mib->fddiMACOld_NotCopied_Ct) ;
  lower =
  upper +
  (mib->fddiMACCopied_Ct - mib->fddiMACOld_Copied_Ct) ;
  mib->fddiMACNotCopiedRatio = div_ratio(upper,lower) ;

  cond =
   ((!mib->fddiMACNotCopiedThreshold &&
   mib->fddiMACNotCopied_Ct !=
    mib->fddiMACOld_NotCopied_Ct)||
   (mib->fddiMACNotCopiedRatio >
   mib->fddiMACNotCopiedThreshold)) ;

  if (cond != mib->fddiMACNotCopiedFlag)
   smt_srf_event(smc,SMT_COND_MAC_NOT_COPIED,
    INDEX_MAC,cond) ;




  mib->fddiMACOld_Frame_Ct = mib->fddiMACFrame_Ct ;
  mib->fddiMACOld_Copied_Ct = mib->fddiMACCopied_Ct ;
  mib->fddiMACOld_Error_Ct = mib->fddiMACError_Ct ;
  mib->fddiMACOld_Lost_Ct = mib->fddiMACLost_Ct ;
  mib->fddiMACOld_NotCopied_Ct = mib->fddiMACNotCopied_Ct ;




  for (port = 0; port < NUMPHYS; port ++) {
   phy = &smc->y[port] ;

   if (!phy->mib->fddiPORTHardwarePresent) {
    continue;
   }

   cond = (phy->mib->fddiPORTEBError_Ct -
    phy->mib->fddiPORTOldEBError_Ct > 5) ;




   smt_srf_event(smc,SMT_COND_PORT_EB_ERROR,
    (int) (INDEX_PORT+ phy->np) ,cond) ;




   phy->mib->fddiPORTOldEBError_Ct =
    phy->mib->fddiPORTEBError_Ct ;
  }


 }



 if (time - smc->sm.smt_last_notify >= (u_long)
  (smc->mib.fddiSMTTT_Notify * TICKS_PER_SECOND) ) {






  if (!smc->sm.pend[SMT_TID_NIF])
   smc->sm.pend[SMT_TID_NIF] = smt_get_tid(smc) ;
  smt_send_nif(smc,&fddi_broadcast, FC_SMT_NSA,
   smc->sm.pend[SMT_TID_NIF], SMT_REQUEST,0) ;
  smc->sm.smt_last_notify = time ;
 }




 if (smc->sm.smt_tvu &&
     time - smc->sm.smt_tvu > 228*TICKS_PER_SECOND) {
  DB_SMT("SMT : UNA expired");
  smc->sm.smt_tvu = 0 ;

  if (!is_equal(&smc->mib.m[MAC0].fddiMACUpstreamNbr,
   &SMT_Unknown)){

   smc->mib.m[MAC0].fddiMACOldUpstreamNbr=
    smc->mib.m[MAC0].fddiMACUpstreamNbr ;
  }
  smc->mib.m[MAC0].fddiMACUpstreamNbr = SMT_Unknown ;
  smc->mib.m[MAC0].fddiMACUNDA_Flag = FALSE ;






  update_dac(smc,0) ;
  smt_srf_event(smc, SMT_EVENT_MAC_NEIGHBOR_CHANGE,
   INDEX_MAC,0) ;
 }
 if (smc->sm.smt_tvd &&
     time - smc->sm.smt_tvd > 228*TICKS_PER_SECOND) {
  DB_SMT("SMT : DNA expired");
  smc->sm.smt_tvd = 0 ;
  if (!is_equal(&smc->mib.m[MAC0].fddiMACDownstreamNbr,
   &SMT_Unknown)){

   smc->mib.m[MAC0].fddiMACOldDownstreamNbr=
    smc->mib.m[MAC0].fddiMACDownstreamNbr ;
  }
  smc->mib.m[MAC0].fddiMACDownstreamNbr = SMT_Unknown ;
  smt_srf_event(smc, SMT_EVENT_MAC_NEIGHBOR_CHANGE,
   INDEX_MAC,0) ;
 }
 for (i = MAC0; i < NUMMACS; i++ ){
  if (time - smc->sm.last_tok_time[i] > 2*TICKS_PER_SECOND ){
   smt_emulate_token_ct( smc, i );
  }
 }


 smt_timer_start(smc,&smc->sm.smt_timer, (u_long)1000000L,
  EV_TOKEN(EVENT_SMT,SM_TIMER)) ;
}
