
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_config {int pcaps; int requested_fc; int fc; int acaps; scalar_t__ speed_caps; int autoneg; void* def_acaps; int fec; int requested_fec; scalar_t__ speed; scalar_t__ lpacaps; } ;
typedef void* fw_port_cap32_t ;


 int ADVERT_MASK ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int FEC_AUTO ;
 int FW_PORT_CAP32_ANEG ;
 int PAUSE_AUTONEG ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 int fwcap_to_cc_fec (void*) ;
 scalar_t__ fwcap_to_fwspeed (void*) ;

__attribute__((used)) static void init_link_config(struct link_config *lc, fw_port_cap32_t pcaps,
        fw_port_cap32_t acaps)
{
 lc->pcaps = pcaps;
 lc->def_acaps = acaps;
 lc->lpacaps = 0;
 lc->speed_caps = 0;
 lc->speed = 0;
 lc->requested_fc = lc->fc = PAUSE_RX | PAUSE_TX;




 lc->requested_fec = FEC_AUTO;
 lc->fec = fwcap_to_cc_fec(lc->def_acaps);
 if (lc->pcaps & FW_PORT_CAP32_ANEG) {
  lc->acaps = lc->pcaps & ADVERT_MASK;
  lc->autoneg = AUTONEG_ENABLE;
  lc->requested_fc |= PAUSE_AUTONEG;
 } else {
  lc->acaps = 0;
  lc->autoneg = AUTONEG_DISABLE;
  lc->speed_caps = fwcap_to_fwspeed(acaps);
 }
}
