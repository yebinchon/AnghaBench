
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct nphy_txgains {int dummy; } ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 scalar_t__ NREV_GE (int ,int) ;
 int wlc_phy_cal_rxiq_nphy_rev2 (struct brcms_phy*,struct nphy_txgains,int) ;
 int wlc_phy_cal_rxiq_nphy_rev3 (struct brcms_phy*,struct nphy_txgains,scalar_t__,int) ;

int
wlc_phy_cal_rxiq_nphy(struct brcms_phy *pi, struct nphy_txgains target_gain,
        u8 cal_type, bool debug)
{
 if (NREV_GE(pi->pubpi.phy_rev, 7))
  cal_type = 0;

 if (NREV_GE(pi->pubpi.phy_rev, 3))
  return wlc_phy_cal_rxiq_nphy_rev3(pi, target_gain, cal_type,
        debug);
 else
  return wlc_phy_cal_rxiq_nphy_rev2(pi, target_gain, debug);
}
