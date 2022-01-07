
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcms_c_info {int shortslot; int include_legacy_erp; TYPE_2__* pub; int LRL; int SRL; int LFBL; int SFBL; int RTSThresh; void** fragthresh; void* usr_fragthresh; int prb_resp_timeout; TYPE_1__* stf; int shortslot_override; int chanspec; } ;
struct TYPE_4__ {int _ampdu; } ;
struct TYPE_3__ {int txant; int ant_rx_ovr; } ;


 int AMPDU_AGG_HOST ;
 int ANT_RX_DIV_DEF ;
 int ANT_TX_DEF ;
 int AUTO ;
 int BRCMS_N_PROTECTION_OFF ;
 int BRCMS_PRB_RESP_TIMEOUT ;
 int BRCMS_PROTECTION_AUTO ;
 int BRCMS_PROTECTION_CTL_OVERLAP ;
 int BRCMS_PROT_G_OVR ;
 int BRCMS_PROT_G_SPEC ;
 int BRCMS_PROT_N_CFG ;
 int BRCMS_PROT_N_CFG_OVR ;
 int BRCMS_PROT_N_NONGF ;
 int BRCMS_PROT_N_NONGF_OVR ;
 int BRCMS_PROT_N_PAM_OVR ;
 int BRCMS_PROT_OVERLAP ;
 int BRCMS_SHORTSLOT_AUTO ;
 void* DOT11_DEFAULT_FRAG_LEN ;
 int DOT11_DEFAULT_RTS_LEN ;
 int NFIFO ;
 int RETRY_LONG_DEF ;
 int RETRY_LONG_FB ;
 int RETRY_SHORT_DEF ;
 int RETRY_SHORT_FB ;
 int brcms_c_protection_upd (struct brcms_c_info*,int ,int) ;
 int ch20mhz_chspec (int) ;

__attribute__((used)) static void brcms_c_info_init(struct brcms_c_info *wlc, int unit)
{
 int i;


 wlc->chanspec = ch20mhz_chspec(1);


 wlc->shortslot = 0;
 wlc->shortslot_override = BRCMS_SHORTSLOT_AUTO;

 brcms_c_protection_upd(wlc, BRCMS_PROT_G_OVR, BRCMS_PROTECTION_AUTO);
 brcms_c_protection_upd(wlc, BRCMS_PROT_G_SPEC, 0);

 brcms_c_protection_upd(wlc, BRCMS_PROT_N_CFG_OVR,
          BRCMS_PROTECTION_AUTO);
 brcms_c_protection_upd(wlc, BRCMS_PROT_N_CFG, BRCMS_N_PROTECTION_OFF);
 brcms_c_protection_upd(wlc, BRCMS_PROT_N_NONGF_OVR,
          BRCMS_PROTECTION_AUTO);
 brcms_c_protection_upd(wlc, BRCMS_PROT_N_NONGF, 0);
 brcms_c_protection_upd(wlc, BRCMS_PROT_N_PAM_OVR, AUTO);

 brcms_c_protection_upd(wlc, BRCMS_PROT_OVERLAP,
          BRCMS_PROTECTION_CTL_OVERLAP);


 wlc->include_legacy_erp = 1;

 wlc->stf->ant_rx_ovr = ANT_RX_DIV_DEF;
 wlc->stf->txant = ANT_TX_DEF;

 wlc->prb_resp_timeout = BRCMS_PRB_RESP_TIMEOUT;

 wlc->usr_fragthresh = DOT11_DEFAULT_FRAG_LEN;
 for (i = 0; i < NFIFO; i++)
  wlc->fragthresh[i] = DOT11_DEFAULT_FRAG_LEN;
 wlc->RTSThresh = DOT11_DEFAULT_RTS_LEN;


 wlc->SFBL = RETRY_SHORT_FB;
 wlc->LFBL = RETRY_LONG_FB;


 wlc->SRL = RETRY_SHORT_DEF;
 wlc->LRL = RETRY_LONG_DEF;


 wlc->pub->_ampdu = AMPDU_AGG_HOST;
}
