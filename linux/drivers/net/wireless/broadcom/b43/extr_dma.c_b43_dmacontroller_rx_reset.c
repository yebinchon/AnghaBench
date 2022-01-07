
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43_wldev {int wl; } ;
typedef enum b43_dmatype { ____Placeholder_b43_dmatype } b43_dmatype ;


 scalar_t__ B43_DMA32_RXCTL ;
 int B43_DMA32_RXSTATE ;
 scalar_t__ B43_DMA32_RXSTATUS ;
 int B43_DMA32_RXSTAT_DISABLED ;
 scalar_t__ B43_DMA64_RXCTL ;
 int B43_DMA64_RXSTAT ;
 scalar_t__ B43_DMA64_RXSTATUS ;
 int B43_DMA64_RXSTAT_DISABLED ;
 int B43_DMA_64BIT ;
 int ENODEV ;
 int b43_read32 (struct b43_wldev*,scalar_t__) ;
 int b43_write32 (struct b43_wldev*,scalar_t__,int ) ;
 int b43err (int ,char*) ;
 int might_sleep () ;
 int msleep (int) ;

__attribute__((used)) static int b43_dmacontroller_rx_reset(struct b43_wldev *dev, u16 mmio_base,
          enum b43_dmatype type)
{
 int i;
 u32 value;
 u16 offset;

 might_sleep();

 offset = (type == B43_DMA_64BIT) ? B43_DMA64_RXCTL : B43_DMA32_RXCTL;
 b43_write32(dev, mmio_base + offset, 0);
 for (i = 0; i < 10; i++) {
  offset = (type == B43_DMA_64BIT) ? B43_DMA64_RXSTATUS :
         B43_DMA32_RXSTATUS;
  value = b43_read32(dev, mmio_base + offset);
  if (type == B43_DMA_64BIT) {
   value &= B43_DMA64_RXSTAT;
   if (value == B43_DMA64_RXSTAT_DISABLED) {
    i = -1;
    break;
   }
  } else {
   value &= B43_DMA32_RXSTATE;
   if (value == B43_DMA32_RXSTAT_DISABLED) {
    i = -1;
    break;
   }
  }
  msleep(1);
 }
 if (i != -1) {
  b43err(dev->wl, "DMA RX reset timed out\n");
  return -ENODEV;
 }

 return 0;
}
