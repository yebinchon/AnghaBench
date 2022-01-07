
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43legacy_wldev {int wl; } ;
typedef enum b43legacy_dmatype { ____Placeholder_b43legacy_dmatype } b43legacy_dmatype ;


 scalar_t__ B43legacy_DMA32_TXCTL ;
 int B43legacy_DMA32_TXSTATE ;
 scalar_t__ B43legacy_DMA32_TXSTATUS ;
 int B43legacy_DMA32_TXSTAT_DISABLED ;
 int B43legacy_DMA32_TXSTAT_IDLEWAIT ;
 int B43legacy_DMA32_TXSTAT_STOPPED ;
 int ENODEV ;
 int b43legacy_read32 (struct b43legacy_wldev*,scalar_t__) ;
 int b43legacy_write32 (struct b43legacy_wldev*,scalar_t__,int ) ;
 int b43legacyerr (int ,char*) ;
 int might_sleep () ;
 int msleep (int) ;

__attribute__((used)) static int b43legacy_dmacontroller_tx_reset(struct b43legacy_wldev *dev,
         u16 mmio_base,
         enum b43legacy_dmatype type)
{
 int i;
 u32 value;
 u16 offset;

 might_sleep();

 for (i = 0; i < 10; i++) {
  offset = B43legacy_DMA32_TXSTATUS;
  value = b43legacy_read32(dev, mmio_base + offset);
  value &= B43legacy_DMA32_TXSTATE;
  if (value == B43legacy_DMA32_TXSTAT_DISABLED ||
      value == B43legacy_DMA32_TXSTAT_IDLEWAIT ||
      value == B43legacy_DMA32_TXSTAT_STOPPED)
   break;
  msleep(1);
 }
 offset = B43legacy_DMA32_TXCTL;
 b43legacy_write32(dev, mmio_base + offset, 0);
 for (i = 0; i < 10; i++) {
  offset = B43legacy_DMA32_TXSTATUS;
  value = b43legacy_read32(dev, mmio_base + offset);
  value &= B43legacy_DMA32_TXSTATE;
  if (value == B43legacy_DMA32_TXSTAT_DISABLED) {
   i = -1;
   break;
  }
  msleep(1);
 }
 if (i != -1) {
  b43legacyerr(dev->wl, "DMA TX reset timed out\n");
  return -ENODEV;
 }

 msleep(1);

 return 0;
}
