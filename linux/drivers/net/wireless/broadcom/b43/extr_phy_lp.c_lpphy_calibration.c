
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {scalar_t__ full_calib_chan; scalar_t__ channel; int txpctl_mode; } ;
typedef enum b43_lpphy_txpctl_mode { ____Placeholder_b43_lpphy_txpctl_mode } b43_lpphy_txpctl_mode ;


 int B43_LPPHY_TXPCTL_OFF ;
 int b43_mac_enable (struct b43_wldev*) ;
 int b43_mac_suspend (struct b43_wldev*) ;
 int lpphy_btcoex_override (struct b43_wldev*) ;
 int lpphy_papd_cal_txpwr (struct b43_wldev*) ;
 int lpphy_pr41573_workaround (struct b43_wldev*) ;
 int lpphy_read_tx_pctl_mode_from_hardware (struct b43_wldev*) ;
 int lpphy_restore_dig_flt_state (struct b43_wldev*) ;
 int lpphy_rx_iq_cal (struct b43_wldev*,int,int,int,int,int *) ;
 int lpphy_save_dig_flt_state (struct b43_wldev*) ;
 int lpphy_set_tx_power_control (struct b43_wldev*,int) ;

__attribute__((used)) static void lpphy_calibration(struct b43_wldev *dev)
{
 struct b43_phy_lp *lpphy = dev->phy.lp;
 enum b43_lpphy_txpctl_mode saved_pctl_mode;
 bool full_cal = 0;

 if (lpphy->full_calib_chan != lpphy->channel) {
  full_cal = 1;
  lpphy->full_calib_chan = lpphy->channel;
 }

 b43_mac_suspend(dev);

 lpphy_btcoex_override(dev);
 if (dev->phy.rev >= 2)
  lpphy_save_dig_flt_state(dev);
 lpphy_read_tx_pctl_mode_from_hardware(dev);
 saved_pctl_mode = lpphy->txpctl_mode;
 lpphy_set_tx_power_control(dev, B43_LPPHY_TXPCTL_OFF);

 if ((dev->phy.rev == 0) && (saved_pctl_mode != B43_LPPHY_TXPCTL_OFF))
  lpphy_pr41573_workaround(dev);
 if ((dev->phy.rev >= 2) && full_cal) {
  lpphy_papd_cal_txpwr(dev);
 }
 lpphy_set_tx_power_control(dev, saved_pctl_mode);
 if (dev->phy.rev >= 2)
  lpphy_restore_dig_flt_state(dev);
 lpphy_rx_iq_cal(dev, 1, 1, 0, 0, ((void*)0));

 b43_mac_enable(dev);
}
