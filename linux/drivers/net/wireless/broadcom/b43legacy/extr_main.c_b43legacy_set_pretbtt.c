
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_wldev {int wl; } ;


 int B43legacy_MMIO_TSF_CFP_PRETBTT ;
 int B43legacy_SHM_SHARED ;
 int B43legacy_SHM_SH_PRETBTT ;
 int NL80211_IFTYPE_ADHOC ;
 scalar_t__ b43legacy_is_mode (int ,int ) ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,int ,int) ;
 int b43legacy_write16 (struct b43legacy_wldev*,int ,int) ;

__attribute__((used)) static void b43legacy_set_pretbtt(struct b43legacy_wldev *dev)
{
 u16 pretbtt;


 if (b43legacy_is_mode(dev->wl, NL80211_IFTYPE_ADHOC))
  pretbtt = 2;
 else
  pretbtt = 250;
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED,
         B43legacy_SHM_SH_PRETBTT, pretbtt);
 b43legacy_write16(dev, B43legacy_MMIO_TSF_CFP_PRETBTT, pretbtt);
}
