
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int wl; } ;


 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ b43_current_band (int ) ;

__attribute__((used)) static unsigned int b43_phy_ac_op_get_default_chan(struct b43_wldev *dev)
{
 if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
  return 11;
 return 36;
}
