
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct lcnphy_iq_est {int i_pwr; int q_pwr; } ;
struct brcms_phy {int dummy; } ;


 int RADIO_2064_REG112 ;
 int udelay (int) ;
 int wlc_lcnphy_rx_gain_override_enable (struct brcms_phy*,int) ;
 int wlc_lcnphy_rx_iq_est (struct brcms_phy*,int,int,struct lcnphy_iq_est*) ;
 int wlc_lcnphy_set_rx_gain_by_distribution (struct brcms_phy*,int ,int ,int ,int ,int ,int ,int ) ;
 int wlc_lcnphy_start_tx_tone (struct brcms_phy*,int,int,int ) ;
 int write_radio_reg (struct brcms_phy*,int ,int ) ;

__attribute__((used)) static bool wlc_lcnphy_rx_iq_cal_gain(struct brcms_phy *pi, u16 biq1_gain,
          u16 tia_gain, u16 lna2_gain)
{
 u32 i_thresh_l, q_thresh_l;
 u32 i_thresh_h, q_thresh_h;
 struct lcnphy_iq_est iq_est_h, iq_est_l;

 wlc_lcnphy_set_rx_gain_by_distribution(pi, 0, 0, 0, biq1_gain, tia_gain,
            lna2_gain, 0);

 wlc_lcnphy_rx_gain_override_enable(pi, 1);
 wlc_lcnphy_start_tx_tone(pi, 2000, (40 >> 1), 0);
 udelay(500);
 write_radio_reg(pi, RADIO_2064_REG112, 0);
 if (!wlc_lcnphy_rx_iq_est(pi, 1024, 32, &iq_est_l))
  return 0;

 wlc_lcnphy_start_tx_tone(pi, 2000, 40, 0);
 udelay(500);
 write_radio_reg(pi, RADIO_2064_REG112, 0);
 if (!wlc_lcnphy_rx_iq_est(pi, 1024, 32, &iq_est_h))
  return 0;

 i_thresh_l = (iq_est_l.i_pwr << 1);
 i_thresh_h = (iq_est_l.i_pwr << 2) + iq_est_l.i_pwr;

 q_thresh_l = (iq_est_l.q_pwr << 1);
 q_thresh_h = (iq_est_l.q_pwr << 2) + iq_est_l.q_pwr;
 if ((iq_est_h.i_pwr > i_thresh_l) &&
     (iq_est_h.i_pwr < i_thresh_h) &&
     (iq_est_h.q_pwr > q_thresh_l) &&
     (iq_est_h.q_pwr < q_thresh_h))
  return 1;

 return 0;
}
