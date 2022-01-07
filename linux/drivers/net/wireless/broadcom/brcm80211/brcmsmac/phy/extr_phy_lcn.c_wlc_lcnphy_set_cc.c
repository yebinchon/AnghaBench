
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;
typedef int s16 ;


 int RADIO_2064_REG089 ;
 int RADIO_2064_REG08A ;
 int RADIO_2064_REG08B ;
 int RADIO_2064_REG08C ;
 int wlc_lcnphy_calc_floor (int,int) ;
 int wlc_lcnphy_set_tx_iqcc (struct brcms_phy*,int,int) ;
 int wlc_lcnphy_set_tx_locc (struct brcms_phy*,int) ;
 int write_radio_reg (struct brcms_phy*,int ,int) ;

__attribute__((used)) static void
wlc_lcnphy_set_cc(struct brcms_phy *pi, int cal_type, s16 coeff_x, s16 coeff_y)
{
 u16 di0dq0;
 u16 x, y, data_rf;
 int k;
 switch (cal_type) {
 case 0:
  wlc_lcnphy_set_tx_iqcc(pi, coeff_x, coeff_y);
  break;
 case 2:
  di0dq0 = (coeff_x & 0xff) << 8 | (coeff_y & 0xff);
  wlc_lcnphy_set_tx_locc(pi, di0dq0);
  break;
 case 3:
  k = wlc_lcnphy_calc_floor(coeff_x, 0);
  y = 8 + k;
  k = wlc_lcnphy_calc_floor(coeff_x, 1);
  x = 8 - k;
  data_rf = (x * 16 + y);
  write_radio_reg(pi, RADIO_2064_REG089, data_rf);
  k = wlc_lcnphy_calc_floor(coeff_y, 0);
  y = 8 + k;
  k = wlc_lcnphy_calc_floor(coeff_y, 1);
  x = 8 - k;
  data_rf = (x * 16 + y);
  write_radio_reg(pi, RADIO_2064_REG08A, data_rf);
  break;
 case 4:
  k = wlc_lcnphy_calc_floor(coeff_x, 0);
  y = 8 + k;
  k = wlc_lcnphy_calc_floor(coeff_x, 1);
  x = 8 - k;
  data_rf = (x * 16 + y);
  write_radio_reg(pi, RADIO_2064_REG08B, data_rf);
  k = wlc_lcnphy_calc_floor(coeff_y, 0);
  y = 8 + k;
  k = wlc_lcnphy_calc_floor(coeff_y, 1);
  x = 8 - k;
  data_rf = (x * 16 + y);
  write_radio_reg(pi, RADIO_2064_REG08C, data_rf);
  break;
 }
}
