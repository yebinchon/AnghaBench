
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct b43_wldev {int wl; } ;


 int B43_MMIO_IFSSLOT ;
 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int b43_write16 (struct b43_wldev*,int ,scalar_t__) ;

__attribute__((used)) static void b43_set_slot_time(struct b43_wldev *dev, u16 slot_time)
{


 if (b43_current_band(dev->wl) == NL80211_BAND_5GHZ)
  return;
 b43_write16(dev, B43_MMIO_IFSSLOT, 510 + slot_time);







}
