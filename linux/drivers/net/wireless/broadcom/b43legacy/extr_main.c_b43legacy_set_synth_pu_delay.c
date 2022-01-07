
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int radio_ver; int radio_rev; } ;
struct b43legacy_wldev {TYPE_1__ phy; int wl; } ;


 int B43legacy_SHM_SHARED ;
 int B43legacy_SHM_SH_SPUWKUP ;
 int NL80211_IFTYPE_ADHOC ;
 scalar_t__ b43legacy_is_mode (int ,int ) ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,int ,int) ;
 int max (int,int) ;

__attribute__((used)) static void b43legacy_set_synth_pu_delay(struct b43legacy_wldev *dev,
       bool idle) {
 u16 pu_delay = 1050;

 if (b43legacy_is_mode(dev->wl, NL80211_IFTYPE_ADHOC) || idle)
  pu_delay = 500;
 if ((dev->phy.radio_ver == 0x2050) && (dev->phy.radio_rev == 8))
  pu_delay = max(pu_delay, (u16)2400);

 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED,
         B43legacy_SHM_SH_SPUWKUP, pu_delay);
}
