
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_hw {TYPE_1__* wiphy; } ;
struct b43legacy_phy {int possible_phymodes; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; TYPE_2__* wl; } ;
struct TYPE_4__ {struct ieee80211_hw* hw; } ;
struct TYPE_3__ {int ** bands; } ;


 int B43legacy_PHYMODE_B ;
 int B43legacy_PHYMODE_G ;
 size_t NL80211_BAND_2GHZ ;
 int b43legacy_band_2GHz_BPHY ;
 int b43legacy_band_2GHz_GPHY ;

__attribute__((used)) static int b43legacy_setup_modes(struct b43legacy_wldev *dev,
     int have_bphy,
     int have_gphy)
{
 struct ieee80211_hw *hw = dev->wl->hw;
 struct b43legacy_phy *phy = &dev->phy;

 phy->possible_phymodes = 0;
 if (have_bphy) {
  hw->wiphy->bands[NL80211_BAND_2GHZ] =
   &b43legacy_band_2GHz_BPHY;
  phy->possible_phymodes |= B43legacy_PHYMODE_B;
 }

 if (have_gphy) {
  hw->wiphy->bands[NL80211_BAND_2GHZ] =
   &b43legacy_band_2GHz_GPHY;
  phy->possible_phymodes |= B43legacy_PHYMODE_G;
 }

 return 0;
}
