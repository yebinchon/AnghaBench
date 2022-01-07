
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct b43_wldev {scalar_t__ irq_mask; } ;


 int B43_MMIO_GEN_IRQ_MASK ;
 int B43_WARN_ON (int) ;
 scalar_t__ b43_read32 (struct b43_wldev*,int ) ;
 int b43_write32 (struct b43_wldev*,int ,scalar_t__) ;
 int handle_irq_beacon (struct b43_wldev*) ;

__attribute__((used)) static void b43_do_beacon_update_trigger_work(struct b43_wldev *dev)
{
 u32 old_irq_mask = dev->irq_mask;


 handle_irq_beacon(dev);
 if (old_irq_mask != dev->irq_mask) {

  B43_WARN_ON(!dev->irq_mask);
  if (b43_read32(dev, B43_MMIO_GEN_IRQ_MASK)) {
   b43_write32(dev, B43_MMIO_GEN_IRQ_MASK, dev->irq_mask);
  } else {





  }
 }
}
