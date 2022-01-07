
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct b43_wldev {scalar_t__ mac_suspended; int wl; } ;


 int B43_DBG_FIRMWARE ;
 int B43_IRQ_MAC_SUSPENDED ;
 int B43_MACCTL_ENABLED ;
 int B43_MMIO_GEN_IRQ_REASON ;
 int B43_MMIO_MACCTL ;
 int B43_SHM_SHARED ;
 int B43_SHM_SH_UCODESTAT ;
 scalar_t__ B43_SHM_SH_UCODESTAT_SLEEP ;
 scalar_t__ B43_SHM_SH_UCODESTAT_SUSP ;
 int B43_WARN_ON (int) ;
 scalar_t__ b43_debug (struct b43_wldev*,int ) ;
 int b43_maskset32 (struct b43_wldev*,int ,int ,int ) ;
 int b43_power_saving_ctl_bits (struct b43_wldev*,int ) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 scalar_t__ b43_shm_read16 (struct b43_wldev*,int ,int ) ;
 int b43_write32 (struct b43_wldev*,int ,int ) ;
 int b43err (int ,char*,scalar_t__) ;

void b43_mac_enable(struct b43_wldev *dev)
{
 if (b43_debug(dev, B43_DBG_FIRMWARE)) {
  u16 fwstate;

  fwstate = b43_shm_read16(dev, B43_SHM_SHARED,
      B43_SHM_SH_UCODESTAT);
  if ((fwstate != B43_SHM_SH_UCODESTAT_SUSP) &&
      (fwstate != B43_SHM_SH_UCODESTAT_SLEEP)) {
   b43err(dev->wl, "b43_mac_enable(): The firmware "
          "should be suspended, but current state is %u\n",
          fwstate);
  }
 }

 dev->mac_suspended--;
 B43_WARN_ON(dev->mac_suspended < 0);
 if (dev->mac_suspended == 0) {
  b43_maskset32(dev, B43_MMIO_MACCTL, ~0, B43_MACCTL_ENABLED);
  b43_write32(dev, B43_MMIO_GEN_IRQ_REASON,
       B43_IRQ_MAC_SUSPENDED);

  b43_read32(dev, B43_MMIO_MACCTL);
  b43_read32(dev, B43_MMIO_GEN_IRQ_REASON);
  b43_power_saving_ctl_bits(dev, 0);
 }
}
