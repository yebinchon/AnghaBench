
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_smc {struct s_phy* y; } ;
struct s_phy {struct fddi_mib_p* mib; } ;
struct TYPE_2__ {int R_val; } ;
struct fddi_mib_p {int fddiPORTMy_Type; int fddiPORTConnectState; int fddiPORTNeighborType; int fddiPORTPCMState; TYPE_1__ fddiPORTMacIndicated; } ;




void pcm_status_state(struct s_smc *smc, int np, int *type, int *state,
        int *remote, int *mac)
{
 struct s_phy *phy = &smc->y[np] ;
 struct fddi_mib_p *mib ;

 mib = phy->mib ;


 *mac = 0 ;
 *type = mib->fddiPORTMy_Type ;
 *state = mib->fddiPORTConnectState ;
 *remote = mib->fddiPORTNeighborType ;

 switch(mib->fddiPORTPCMState) {
 case 128 :
  *mac = mib->fddiPORTMacIndicated.R_val ;
  break ;
 }
}
