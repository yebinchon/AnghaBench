
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_tx_queue_params {int aifs; void* cw_max; void* cw_min; int txop; } ;
struct edcf_acparam {int ACI; int ECW; int TXOP; int member_2; int member_1; int member_0; } ;
struct brcms_c_info {int dummy; } ;


 int EDCF_ACI_MASK ;
 int EDCF_ACI_SHIFT ;
 void* EDCF_ECW2CW (int) ;
 int EDCF_ECWMAX_MASK ;
 int EDCF_ECWMAX_SHIFT ;
 int EDCF_ECWMIN_MASK ;
 int IEEE80211_NUM_ACS ;
 int brcms_c_enable_mac (struct brcms_c_info*) ;
 int brcms_c_suspend_mac_and_wait (struct brcms_c_info*) ;
 int brcms_c_wme_setparams (struct brcms_c_info*,int,struct ieee80211_tx_queue_params*,int) ;

__attribute__((used)) static void brcms_c_edcf_setparams(struct brcms_c_info *wlc, bool suspend)
{
 u16 aci;
 int i_ac;
 struct ieee80211_tx_queue_params txq_pars;
 static const struct edcf_acparam default_edcf_acparams[] = {
   {139, 138, 137},
   {136, 135, 134},
   {133, 132, 131},
   {130, 129, 128}
 };
 const struct edcf_acparam *edcf_acp = &default_edcf_acparams[0];

 for (i_ac = 0; i_ac < IEEE80211_NUM_ACS; i_ac++, edcf_acp++) {

  aci = (edcf_acp->ACI & EDCF_ACI_MASK) >> EDCF_ACI_SHIFT;


  txq_pars.txop = edcf_acp->TXOP;
  txq_pars.aifs = edcf_acp->ACI;


  txq_pars.cw_min = EDCF_ECW2CW(edcf_acp->ECW & EDCF_ECWMIN_MASK);

  txq_pars.cw_max = EDCF_ECW2CW((edcf_acp->ECW & EDCF_ECWMAX_MASK)
         >> EDCF_ECWMAX_SHIFT);
  brcms_c_wme_setparams(wlc, aci, &txq_pars, suspend);
 }

 if (suspend) {
  brcms_c_suspend_mac_and_wait(wlc);
  brcms_c_enable_mac(wlc);
 }
}
