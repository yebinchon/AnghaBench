
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcmf_if {TYPE_2__* drvr; TYPE_1__* vif; } ;
typedef int s32 ;
struct TYPE_4__ {int config; } ;
struct TYPE_3__ {int sme_state; } ;


 int BRCMF_VIF_STATUS_READY ;
 int brcmf_config_dongle (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static s32 __brcmf_cfg80211_up(struct brcmf_if *ifp)
{
 set_bit(BRCMF_VIF_STATUS_READY, &ifp->vif->sme_state);

 return brcmf_config_dongle(ifp->drvr->config);
}
