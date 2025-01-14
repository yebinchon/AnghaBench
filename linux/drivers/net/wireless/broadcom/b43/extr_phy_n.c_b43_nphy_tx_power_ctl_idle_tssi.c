
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct b43_phy {int rev; TYPE_2__* chandef; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_n {TYPE_3__* pwr_ctl_info; } ;
typedef int s32 ;
struct TYPE_6__ {int idle_tssi_5g; int idle_tssi_2g; } ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct TYPE_4__ {int flags; } ;


 int IEEE80211_CHAN_NO_IR ;
 int N_RSSI_TSSI_2G ;
 int N_RSSI_W1 ;
 scalar_t__ b43_nphy_ipa (struct b43_wldev*) ;
 int b43_nphy_ipa_internal_tssi_setup (struct b43_wldev*) ;
 int b43_nphy_poll_rssi (struct b43_wldev*,int ,int *,int) ;
 int b43_nphy_rf_ctl_override (struct b43_wldev*,int,int ,int,int) ;
 int b43_nphy_rf_ctl_override_rev19 (struct b43_wldev*,int,int ,int,int,int ) ;
 int b43_nphy_rf_ctl_override_rev7 (struct b43_wldev*,int,int ,int,int,int ) ;
 int b43_nphy_rssi_select (struct b43_wldev*,int ,int ) ;
 int b43_nphy_stop_playback (struct b43_wldev*) ;
 int b43_nphy_tx_tone (struct b43_wldev*,int,int ,int,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void b43_nphy_tx_power_ctl_idle_tssi(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_n *nphy = dev->phy.n;

 u32 tmp;
 s32 rssi[4] = { };

 if (phy->chandef->chan->flags & IEEE80211_CHAN_NO_IR)
  return;

 if (b43_nphy_ipa(dev))
  b43_nphy_ipa_internal_tssi_setup(dev);

 if (phy->rev >= 19)
  b43_nphy_rf_ctl_override_rev19(dev, 0x1000, 0, 3, 0, 0);
 else if (phy->rev >= 7)
  b43_nphy_rf_ctl_override_rev7(dev, 0x1000, 0, 3, 0, 0);
 else if (phy->rev >= 3)
  b43_nphy_rf_ctl_override(dev, 0x2000, 0, 3, 0);

 b43_nphy_stop_playback(dev);
 b43_nphy_tx_tone(dev, 4000, 0, 0, 0, 0);
 udelay(20);
 tmp = b43_nphy_poll_rssi(dev, N_RSSI_TSSI_2G, rssi, 1);
 b43_nphy_stop_playback(dev);

 b43_nphy_rssi_select(dev, 0, N_RSSI_W1);

 if (phy->rev >= 19)
  b43_nphy_rf_ctl_override_rev19(dev, 0x1000, 0, 3, 1, 0);
 else if (phy->rev >= 7)
  b43_nphy_rf_ctl_override_rev7(dev, 0x1000, 0, 3, 1, 0);
 else if (phy->rev >= 3)
  b43_nphy_rf_ctl_override(dev, 0x2000, 0, 3, 1);

 if (phy->rev >= 19) {

  return;
 } else if (phy->rev >= 3) {
  nphy->pwr_ctl_info[0].idle_tssi_5g = (tmp >> 24) & 0xFF;
  nphy->pwr_ctl_info[1].idle_tssi_5g = (tmp >> 8) & 0xFF;
 } else {
  nphy->pwr_ctl_info[0].idle_tssi_5g = (tmp >> 16) & 0xFF;
  nphy->pwr_ctl_info[1].idle_tssi_5g = tmp & 0xFF;
 }
 nphy->pwr_ctl_info[0].idle_tssi_2g = (tmp >> 24) & 0xFF;
 nphy->pwr_ctl_info[1].idle_tssi_2g = (tmp >> 8) & 0xFF;
}
