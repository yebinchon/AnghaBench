
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int wl; } ;


 scalar_t__ B43_STAT_INITIALIZED ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int b2055_upload_inittab (struct b43_wldev*,int,int ) ;
 scalar_t__ b43_current_band (int ) ;
 int b43_radio_init2055_post (struct b43_wldev*) ;
 int b43_radio_init2055_pre (struct b43_wldev*) ;
 scalar_t__ b43_status (struct b43_wldev*) ;

__attribute__((used)) static void b43_radio_init2055(struct b43_wldev *dev)
{
 b43_radio_init2055_pre(dev);
 if (b43_status(dev) < B43_STAT_INITIALIZED) {

  b2055_upload_inittab(dev, 0, 0);
 } else {
  bool ghz5 = b43_current_band(dev->wl) == NL80211_BAND_5GHZ;
  b2055_upload_inittab(dev, ghz5, 0);
 }
 b43_radio_init2055_post(dev);
}
