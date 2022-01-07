
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int dummy; } ;


 int ALDPS_SPDWN_RATIO ;
 int EEE_SPDWN_EN ;
 int EEE_SPDWN_RATIO ;
 int L1_SPDWN_EN ;
 int MCU_TYPE_PLA ;
 int PKT_AVAIL_SPDWN_EN ;
 int PLA_MAC_PWR_CTRL ;
 int PLA_MAC_PWR_CTRL2 ;
 int PLA_MAC_PWR_CTRL3 ;
 int PLA_MAC_PWR_CTRL4 ;
 int PWRSAVE_SPDWN_EN ;
 int RXDV_SPDWN_EN ;
 int SUSPEND_SPDWN_EN ;
 int TP1000_SPDWN_EN ;
 int TP100_SPDWN_EN ;
 int TP500_SPDWN_EN ;
 int TX10MIDLE_EN ;
 int U1U2_SPDWN_EN ;
 int ocp_write_word (struct r8152*,int ,int ,int) ;

__attribute__((used)) static void r8153_mac_clk_spd(struct r8152 *tp, bool enable)
{

 if (enable) {
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL,
          ALDPS_SPDWN_RATIO);
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL2,
          EEE_SPDWN_RATIO);
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL3,
          PKT_AVAIL_SPDWN_EN | SUSPEND_SPDWN_EN |
          U1U2_SPDWN_EN | L1_SPDWN_EN);
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL4,
          PWRSAVE_SPDWN_EN | RXDV_SPDWN_EN | TX10MIDLE_EN |
          TP100_SPDWN_EN | TP500_SPDWN_EN | EEE_SPDWN_EN |
          TP1000_SPDWN_EN);
 } else {
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL, 0);
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL2, 0);
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL3, 0);
  ocp_write_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL4, 0);
 }
}
