
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 int NPHY_RSSI_SEL_NB ;
 int NPHY_RSSI_SEL_W1 ;
 int NPHY_RSSI_SEL_W2 ;
 scalar_t__ NREV_GE (int ,int) ;
 int wlc_phy_rssi_cal_nphy_rev2 (struct brcms_phy*,int ) ;
 int wlc_phy_rssi_cal_nphy_rev3 (struct brcms_phy*) ;

void wlc_phy_rssi_cal_nphy(struct brcms_phy *pi)
{
 if (NREV_GE(pi->pubpi.phy_rev, 3)) {
  wlc_phy_rssi_cal_nphy_rev3(pi);
 } else {
  wlc_phy_rssi_cal_nphy_rev2(pi, NPHY_RSSI_SEL_NB);
  wlc_phy_rssi_cal_nphy_rev2(pi, NPHY_RSSI_SEL_W1);
  wlc_phy_rssi_cal_nphy_rev2(pi, NPHY_RSSI_SEL_W2);
 }
}
