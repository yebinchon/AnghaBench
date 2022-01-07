
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sas; } ;
struct TYPE_10__ {int fddiSMTConnectionPolicy; } ;
struct s_smc {TYPE_3__* y; TYPE_1__ s; TYPE_5__ mib; } ;
struct s_phy {int np; int* t_val; int pc_mode; int wc_flag; void* cf_loop; int phy_name; int pc_lem_fail; struct fddi_mib_p* mib; } ;
struct TYPE_9__ {int T_val; } ;
struct fddi_mib_p {int fddiPORTMy_Type; int fddiPORTNeighborType; TYPE_4__ fddiPORTMacIndicated; int fddiPORTPC_Withhold; int fddiPORTConnectState; int fddiPORTLCTFail_Ct; } ;
struct TYPE_8__ {TYPE_2__* mib; } ;
struct TYPE_7__ {int fddiPORTConnectState; } ;


 int DB_PCMN (int,char*,int const,...) ;
 int EVENT_PCM ;
 void* FALSE ;
 int INDEX_PORT ;
 int PA ;
 int PB ;
 int PCM_ACTIVE ;
 int PCM_CONNECTING ;
 int PCM_STANDBY ;
 int PC_START ;
 int PC_WH_NONE ;
 int PM_TREE ;
 int POLICY_AA ;
 int POLICY_AB ;
 int POLICY_AM ;
 int POLICY_AS ;
 int POLICY_BA ;
 int POLICY_BB ;
 int POLICY_BM ;
 int POLICY_BS ;
 int POLICY_MA ;
 int POLICY_MB ;
 int POLICY_MM ;
 int POLICY_MS ;
 int POLICY_SA ;
 int POLICY_SB ;
 int POLICY_SM ;
 int POLICY_SS ;
 int PS ;

 int SMT_EVENT_PORT_CONNECTION ;





 void* TRUE ;

 int lem_check_lct (struct s_smc*,struct s_phy*) ;
 int queue_event (struct s_smc*,int ,int ) ;
 int smt_srf_event (struct s_smc*,int ,int,int ) ;

__attribute__((used)) static void pc_tcode_actions(struct s_smc *smc, const int bit, struct s_phy *phy)
{
 int np = phy->np ;
 struct fddi_mib_p *mib ;

 mib = phy->mib ;

 switch(bit) {
 case 0:
  phy->t_val[0] = 0 ;
  break ;
 case 1:
  if (mib->fddiPORTMy_Type == 128 || mib->fddiPORTMy_Type == 129)
   phy->t_val[1] = 1 ;
  else
   phy->t_val[1] = 0 ;
  break ;
 case 2 :
  if (mib->fddiPORTMy_Type == 130 || mib->fddiPORTMy_Type == 129)
   phy->t_val[2] = 1 ;
  else
   phy->t_val[2] = 0 ;
  break ;
 case 3:
  {
  int type,ne ;
  int policy ;

  type = mib->fddiPORTMy_Type ;
  ne = mib->fddiPORTNeighborType ;
  policy = smc->mib.fddiSMTConnectionPolicy ;

  phy->t_val[3] = 1 ;
  switch (type) {
  case 131 :
   if (
    ((policy & POLICY_AA) && ne == 131) ||
    ((policy & POLICY_AB) && ne == 130) ||
    ((policy & POLICY_AS) && ne == 128) ||
    ((policy & POLICY_AM) && ne == 129) )
    phy->t_val[3] = 0 ;
   break ;
  case 130 :
   if (
    ((policy & POLICY_BA) && ne == 131) ||
    ((policy & POLICY_BB) && ne == 130) ||
    ((policy & POLICY_BS) && ne == 128) ||
    ((policy & POLICY_BM) && ne == 129) )
    phy->t_val[3] = 0 ;
   break ;
  case 128 :
   if (
    ((policy & POLICY_SA) && ne == 131) ||
    ((policy & POLICY_SB) && ne == 130) ||
    ((policy & POLICY_SS) && ne == 128) ||
    ((policy & POLICY_SM) && ne == 129) )
    phy->t_val[3] = 0 ;
   break ;
  case 129 :
   if ( ne == 129 ||
    ((policy & POLICY_MA) && ne == 131) ||
    ((policy & POLICY_MB) && ne == 130) ||
    ((policy & POLICY_MS) && ne == 128) ||
    ((policy & POLICY_MM) && ne == 129) )
    phy->t_val[3] = 0 ;
   break ;
  }




  if ( (type == 131 && ne == 131 ) ||
   (type == 131 && ne == 128 ) ||
   (type == 130 && ne == 130 ) ||
   (type == 130 && ne == 128 ) ||
   (type == 128 && ne == 131 ) ||
   (type == 128 && ne == 130 ) ) {
   smt_srf_event(smc,SMT_EVENT_PORT_CONNECTION,
    (int) (INDEX_PORT+ phy->np) ,0) ;
  }

  }
  break ;
 case 4:
  if (mib->fddiPORTPC_Withhold == PC_WH_NONE) {
   if (phy->pc_lem_fail) {
    phy->t_val[4] = 1 ;
    phy->t_val[5] = 0 ;
   }
   else {
    phy->t_val[4] = 0 ;
    if (mib->fddiPORTLCTFail_Ct > 0)
     phy->t_val[5] = 1 ;
    else
     phy->t_val[5] = 0 ;






    if (phy->wc_flag)
     phy->t_val[5] = 1 ;
   }
   mib->fddiPORTConnectState = PCM_CONNECTING ;
  }
  else {
   mib->fddiPORTConnectState = PCM_STANDBY ;
   phy->t_val[4] = 1 ;
   phy->t_val[5] = 1 ;
  }
  break ;
 case 5:
  break ;
 case 6:

  phy->t_val[6] = 0 ;
  break ;
 case 7:
  phy->cf_loop = FALSE ;
  lem_check_lct(smc,phy) ;
  if (phy->pc_lem_fail) {
   DB_PCMN(1, "PCM %c : E104 LCT failed", phy->phy_name);
   phy->t_val[7] = 1 ;
  }
  else
   phy->t_val[7] = 0 ;
  break ;
 case 8:
  phy->t_val[8] = 0 ;
  break ;
 case 9:
  phy->cf_loop = 0 ;
  if ((mib->fddiPORTPC_Withhold != PC_WH_NONE) ||
       ((smc->s.sas == 134) && (phy->wc_flag))) {
   queue_event(smc,EVENT_PCM+np,PC_START) ;
   break ;
  }
  phy->t_val[9] = FALSE ;
  switch (smc->s.sas) {
  case 134 :



   if (phy->pc_mode == PM_TREE) {
    if ((np == PB) || ((np == PA) &&
    (smc->y[PB].mib->fddiPORTConnectState !=
     PCM_ACTIVE)))
     phy->t_val[9] = TRUE ;
   }
   else {
    if (np == PB)
     phy->t_val[9] = TRUE ;
   }
   break ;
  case 132 :
   if (np == PS)
    phy->t_val[9] = TRUE ;
   break ;
  }
  mib->fddiPORTMacIndicated.T_val = phy->t_val[9] ;
  break ;
 }
 DB_PCMN(1, "SIG snd %x %x:", bit, phy->t_val[bit]);
}
