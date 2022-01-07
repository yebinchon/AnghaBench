
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dfq_valid; int wl; } ;


 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 scalar_t__ b43legacy_is_mode (int ,int ) ;
 int b43legacy_power_saving_ctl_bits (struct b43legacy_wldev*,int,int) ;

__attribute__((used)) static void handle_irq_tbtt_indication(struct b43legacy_wldev *dev)
{
 if (b43legacy_is_mode(dev->wl, NL80211_IFTYPE_AP)) {

 } else {
  if (1 )
   b43legacy_power_saving_ctl_bits(dev, -1, -1);
 }
 if (b43legacy_is_mode(dev->wl, NL80211_IFTYPE_ADHOC))
  dev->dfq_valid = 1;
}
