
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43_wldev {int wl; } ;
typedef enum b43_dmatype { ____Placeholder_b43_dmatype } b43_dmatype ;


 scalar_t__ B43_DMA32_TXCTL ;
 int B43_DMA32_TXSTATE ;
 scalar_t__ B43_DMA32_TXSTATUS ;
 int B43_DMA32_TXSTAT_DISABLED ;
 int B43_DMA32_TXSTAT_IDLEWAIT ;
 int B43_DMA32_TXSTAT_STOPPED ;
 scalar_t__ B43_DMA64_TXCTL ;
 int B43_DMA64_TXSTAT ;
 scalar_t__ B43_DMA64_TXSTATUS ;
 int B43_DMA64_TXSTAT_DISABLED ;
 int B43_DMA64_TXSTAT_IDLEWAIT ;
 int B43_DMA64_TXSTAT_STOPPED ;
 int B43_DMA_64BIT ;
 int ENODEV ;
 int b43_read32 (struct b43_wldev*,scalar_t__) ;
 int b43_write32 (struct b43_wldev*,scalar_t__,int ) ;
 int b43err (int ,char*) ;
 int might_sleep () ;
 int msleep (int) ;

__attribute__((used)) static int b43_dmacontroller_tx_reset(struct b43_wldev *dev, u16 mmio_base,
          enum b43_dmatype type)
{
 int i;
 u32 value;
 u16 offset;

 might_sleep();

 for (i = 0; i < 10; i++) {
  offset = (type == B43_DMA_64BIT) ? B43_DMA64_TXSTATUS :
         B43_DMA32_TXSTATUS;
  value = b43_read32(dev, mmio_base + offset);
  if (type == B43_DMA_64BIT) {
   value &= B43_DMA64_TXSTAT;
   if (value == B43_DMA64_TXSTAT_DISABLED ||
       value == B43_DMA64_TXSTAT_IDLEWAIT ||
       value == B43_DMA64_TXSTAT_STOPPED)
    break;
  } else {
   value &= B43_DMA32_TXSTATE;
   if (value == B43_DMA32_TXSTAT_DISABLED ||
       value == B43_DMA32_TXSTAT_IDLEWAIT ||
       value == B43_DMA32_TXSTAT_STOPPED)
    break;
  }
  msleep(1);
 }
 offset = (type == B43_DMA_64BIT) ? B43_DMA64_TXCTL : B43_DMA32_TXCTL;
 b43_write32(dev, mmio_base + offset, 0);
 for (i = 0; i < 10; i++) {
  offset = (type == B43_DMA_64BIT) ? B43_DMA64_TXSTATUS :
         B43_DMA32_TXSTATUS;
  value = b43_read32(dev, mmio_base + offset);
  if (type == B43_DMA_64BIT) {
   value &= B43_DMA64_TXSTAT;
   if (value == B43_DMA64_TXSTAT_DISABLED) {
    i = -1;
    break;
   }
  } else {
   value &= B43_DMA32_TXSTATE;
   if (value == B43_DMA32_TXSTAT_DISABLED) {
    i = -1;
    break;
   }
  }
  msleep(1);
 }
 if (i != -1) {
  b43err(dev->wl, "DMA TX reset timed out\n");
  return -ENODEV;
 }

 msleep(1);

 return 0;
}
