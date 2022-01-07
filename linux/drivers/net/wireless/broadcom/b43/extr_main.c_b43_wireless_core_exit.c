
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* ops; } ;
struct b43_wldev {TYPE_5__* wl; TYPE_4__ phy; TYPE_2__* dev; } ;
struct TYPE_10__ {int * current_beacon; } ;
struct TYPE_8__ {int (* switch_analog ) (struct b43_wldev*,int ) ;} ;
struct TYPE_7__ {int bus_type; TYPE_1__* bdev; } ;
struct TYPE_6__ {int bus; } ;




 int B43_MACCTL_PSM_JMP0 ;
 int B43_MACCTL_PSM_RUN ;
 int B43_MMIO_MACCTL ;
 scalar_t__ B43_STAT_INITIALIZED ;
 int B43_STAT_UNINIT ;
 int B43_WARN_ON (int ) ;
 int b43_bus_may_powerdown (struct b43_wldev*) ;
 int b43_chip_exit (struct b43_wldev*) ;
 int b43_device_disable (struct b43_wldev*,int ) ;
 int b43_dma_free (struct b43_wldev*) ;
 int b43_maskset32 (struct b43_wldev*,int ,int ,int ) ;
 int b43_pio_free (struct b43_wldev*) ;
 int b43_set_status (struct b43_wldev*,int ) ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 int bcma_host_pci_down (int ) ;
 int dev_kfree_skb_any (int *) ;
 int stub1 (struct b43_wldev*,int ) ;

__attribute__((used)) static void b43_wireless_core_exit(struct b43_wldev *dev)
{
 B43_WARN_ON(dev && b43_status(dev) > B43_STAT_INITIALIZED);
 if (!dev || b43_status(dev) != B43_STAT_INITIALIZED)
  return;

 b43_set_status(dev, B43_STAT_UNINIT);


 b43_maskset32(dev, B43_MMIO_MACCTL, ~B43_MACCTL_PSM_RUN,
        B43_MACCTL_PSM_JMP0);

 switch (dev->dev->bus_type) {
 }

 b43_dma_free(dev);
 b43_pio_free(dev);
 b43_chip_exit(dev);
 dev->phy.ops->switch_analog(dev, 0);
 if (dev->wl->current_beacon) {
  dev_kfree_skb_any(dev->wl->current_beacon);
  dev->wl->current_beacon = ((void*)0);
 }

 b43_device_disable(dev, 0);
 b43_bus_may_powerdown(dev);
}
