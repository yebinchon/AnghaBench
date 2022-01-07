
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* n; } ;
struct b43_wldev {TYPE_2__ phy; int wl; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_3__ {scalar_t__ ipa5g_on; scalar_t__ ipa2g_on; } ;


 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int b43_current_band (int ) ;

__attribute__((used)) static inline bool b43_nphy_ipa(struct b43_wldev *dev)
{
 enum nl80211_band band = b43_current_band(dev->wl);
 return ((dev->phy.n->ipa2g_on && band == NL80211_BAND_2GHZ) ||
  (dev->phy.n->ipa5g_on && band == NL80211_BAND_5GHZ));
}
