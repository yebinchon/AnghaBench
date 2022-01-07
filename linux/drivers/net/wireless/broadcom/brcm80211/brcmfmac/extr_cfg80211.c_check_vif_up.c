
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_cfg80211_vif {int sme_state; } ;


 int BRCMF_VIF_STATUS_READY ;
 int INFO ;
 int brcmf_dbg (int ,char*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool check_vif_up(struct brcmf_cfg80211_vif *vif)
{
 if (!test_bit(BRCMF_VIF_STATUS_READY, &vif->sme_state)) {
  brcmf_dbg(INFO, "device is not ready : status (%lu)\n",
     vif->sme_state);
  return 0;
 }
 return 1;
}
