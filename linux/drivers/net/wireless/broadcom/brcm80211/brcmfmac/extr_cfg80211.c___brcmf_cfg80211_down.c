
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct brcmf_if {TYPE_2__* vif; TYPE_1__* drvr; } ;
struct brcmf_cfg80211_info {int dummy; } ;
typedef int s32 ;
struct TYPE_5__ {int sme_state; } ;
struct TYPE_4__ {struct brcmf_cfg80211_info* config; } ;


 int BRCMF_VIF_STATUS_READY ;
 int WLAN_REASON_UNSPECIFIED ;
 int brcmf_abort_scanning (struct brcmf_cfg80211_info*) ;
 int brcmf_delay (int) ;
 int brcmf_link_down (TYPE_2__*,int ) ;
 scalar_t__ check_vif_up (TYPE_2__*) ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static s32 __brcmf_cfg80211_down(struct brcmf_if *ifp)
{
 struct brcmf_cfg80211_info *cfg = ifp->drvr->config;





 if (check_vif_up(ifp->vif)) {
  brcmf_link_down(ifp->vif, WLAN_REASON_UNSPECIFIED);





  brcmf_delay(500);
 }

 brcmf_abort_scanning(cfg);
 clear_bit(BRCMF_VIF_STATUS_READY, &ifp->vif->sme_state);

 return 0;
}
