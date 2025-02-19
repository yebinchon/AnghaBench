
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43_wldev {TYPE_1__* dev; } ;
typedef enum b43_dmatype { ____Placeholder_b43_dmatype } b43_dmatype ;
struct TYPE_2__ {int bus_type; int sdev; int bdev; } ;




 int B43_DMA32_TXADDREXT_MASK ;
 scalar_t__ B43_DMA32_TXCTL ;
 int B43_DMA_30BIT ;
 int B43_DMA_32BIT ;
 int B43_DMA_64BIT ;
 int BCMA_IOST ;
 int BCMA_IOST_DMA64 ;
 int SSB_TMSHIGH ;
 int SSB_TMSHIGH_DMA64 ;
 scalar_t__ b43_dmacontroller_base (int ,int ) ;
 int b43_read32 (struct b43_wldev*,scalar_t__) ;
 int b43_write32 (struct b43_wldev*,scalar_t__,int) ;
 int bcma_aread32 (int ,int ) ;
 int ssb_read32 (int ,int ) ;

__attribute__((used)) static enum b43_dmatype b43_engine_type(struct b43_wldev *dev)
{
 u32 tmp;
 u16 mmio_base;

 switch (dev->dev->bus_type) {
 }

 mmio_base = b43_dmacontroller_base(0, 0);
 b43_write32(dev, mmio_base + B43_DMA32_TXCTL, B43_DMA32_TXADDREXT_MASK);
 tmp = b43_read32(dev, mmio_base + B43_DMA32_TXCTL);
 if (tmp & B43_DMA32_TXADDREXT_MASK)
  return B43_DMA_32BIT;
 return B43_DMA_30BIT;
}
