
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dfq_valid; } ;


 int B43_MACCMD_DFQ_VALID ;
 int B43_MMIO_MACCMD ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_write32 (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void handle_irq_atim_end(struct b43_wldev *dev)
{
 if (dev->dfq_valid) {
  b43_write32(dev, B43_MMIO_MACCMD,
       b43_read32(dev, B43_MMIO_MACCMD)
       | B43_MACCMD_DFQ_VALID);
  dev->dfq_valid = 0;
 }
}
