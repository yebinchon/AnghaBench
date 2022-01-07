
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int rev; struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_1__ phy; int wl; } ;
struct b43_phy_n {int rfctrl_intc1_save; int rfctrl_intc2_save; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int B43_NPHY_RFCTL_INTC1 ;
 int B43_NPHY_RFCTL_INTC2 ;
 int NL80211_BAND_5GHZ ;
 int b43_current_band (int ) ;
 void* b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_nphy_pa_override(struct b43_wldev *dev, bool enable)
{
 struct b43_phy_n *nphy = dev->phy.n;
 enum nl80211_band band;
 u16 tmp;

 if (!enable) {
  nphy->rfctrl_intc1_save = b43_phy_read(dev,
             B43_NPHY_RFCTL_INTC1);
  nphy->rfctrl_intc2_save = b43_phy_read(dev,
             B43_NPHY_RFCTL_INTC2);
  band = b43_current_band(dev->wl);
  if (dev->phy.rev >= 7) {
   tmp = 0x1480;
  } else if (dev->phy.rev >= 3) {
   if (band == NL80211_BAND_5GHZ)
    tmp = 0x600;
   else
    tmp = 0x480;
  } else {
   if (band == NL80211_BAND_5GHZ)
    tmp = 0x180;
   else
    tmp = 0x120;
  }
  b43_phy_write(dev, B43_NPHY_RFCTL_INTC1, tmp);
  b43_phy_write(dev, B43_NPHY_RFCTL_INTC2, tmp);
 } else {
  b43_phy_write(dev, B43_NPHY_RFCTL_INTC1,
    nphy->rfctrl_intc1_save);
  b43_phy_write(dev, B43_NPHY_RFCTL_INTC2,
    nphy->rfctrl_intc2_save);
 }
}
