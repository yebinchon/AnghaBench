
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43legacy_wldev {int irq_mask; struct b43legacy_wl* wl; } ;
struct b43legacy_wl {int beacon_templates_virgin; } ;


 int B43legacy_IRQ_BEACON ;
 int B43legacy_MACCMD_BEACON0_VALID ;
 int B43legacy_MACCMD_BEACON1_VALID ;
 int B43legacy_MMIO_GEN_IRQ_REASON ;
 int B43legacy_MMIO_MACCMD ;
 int NL80211_IFTYPE_AP ;
 int b43legacy_is_mode (struct b43legacy_wl*,int ) ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_upload_beacon0 (struct b43legacy_wldev*) ;
 int b43legacy_upload_beacon1 (struct b43legacy_wldev*) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void handle_irq_beacon(struct b43legacy_wldev *dev)
{
 struct b43legacy_wl *wl = dev->wl;
 u32 cmd, beacon0_valid, beacon1_valid;

 if (!b43legacy_is_mode(wl, NL80211_IFTYPE_AP))
  return;




 dev->irq_mask &= ~B43legacy_IRQ_BEACON;

 cmd = b43legacy_read32(dev, B43legacy_MMIO_MACCMD);
 beacon0_valid = (cmd & B43legacy_MACCMD_BEACON0_VALID);
 beacon1_valid = (cmd & B43legacy_MACCMD_BEACON1_VALID);


 if (beacon0_valid && beacon1_valid) {
  b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_REASON, B43legacy_IRQ_BEACON);
  dev->irq_mask |= B43legacy_IRQ_BEACON;
  return;
 }

 if (unlikely(wl->beacon_templates_virgin)) {


  wl->beacon_templates_virgin = 0;
  b43legacy_upload_beacon0(dev);
  b43legacy_upload_beacon1(dev);
  cmd = b43legacy_read32(dev, B43legacy_MMIO_MACCMD);
  cmd |= B43legacy_MACCMD_BEACON0_VALID;
  b43legacy_write32(dev, B43legacy_MMIO_MACCMD, cmd);
 } else {
  if (!beacon0_valid) {
   b43legacy_upload_beacon0(dev);
   cmd = b43legacy_read32(dev, B43legacy_MMIO_MACCMD);
   cmd |= B43legacy_MACCMD_BEACON0_VALID;
   b43legacy_write32(dev, B43legacy_MMIO_MACCMD, cmd);
  } else if (!beacon1_valid) {
   b43legacy_upload_beacon1(dev);
   cmd = b43legacy_read32(dev, B43legacy_MMIO_MACCMD);
   cmd |= B43legacy_MACCMD_BEACON1_VALID;
   b43legacy_write32(dev, B43legacy_MMIO_MACCMD, cmd);
  }
 }
}
