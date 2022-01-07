
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct b43legacy_wldev {TYPE_2__* wl; int irq_mask; TYPE_1__* dev; } ;
struct TYPE_5__ {int hw; } ;
struct TYPE_4__ {int irq; } ;


 int B43legacy_MMIO_GEN_IRQ_MASK ;
 scalar_t__ B43legacy_STAT_INITIALIZED ;
 int B43legacy_STAT_STARTED ;
 int B43legacy_WARN_ON (int) ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 int b43legacy_interrupt_handler ;
 int b43legacy_mac_enable (struct b43legacy_wldev*) ;
 int b43legacy_periodic_tasks_setup (struct b43legacy_wldev*) ;
 int b43legacy_set_status (struct b43legacy_wldev*,int ) ;
 scalar_t__ b43legacy_status (struct b43legacy_wldev*) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int ) ;
 int b43legacydbg (TYPE_2__*,char*) ;
 int b43legacyerr (TYPE_2__*,char*,int ) ;
 int drain_txstatus_queue (struct b43legacy_wldev*) ;
 int ieee80211_wake_queues (int ) ;
 int request_irq (int ,int ,int ,int ,struct b43legacy_wldev*) ;

__attribute__((used)) static int b43legacy_wireless_core_start(struct b43legacy_wldev *dev)
{
 int err;

 B43legacy_WARN_ON(b43legacy_status(dev) != B43legacy_STAT_INITIALIZED);

 drain_txstatus_queue(dev);
 err = request_irq(dev->dev->irq, b43legacy_interrupt_handler,
     IRQF_SHARED, KBUILD_MODNAME, dev);
 if (err) {
  b43legacyerr(dev->wl, "Cannot request IRQ-%d\n",
         dev->dev->irq);
  goto out;
 }

 ieee80211_wake_queues(dev->wl->hw);
 b43legacy_set_status(dev, B43legacy_STAT_STARTED);


 b43legacy_mac_enable(dev);
 b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_MASK, dev->irq_mask);


 b43legacy_periodic_tasks_setup(dev);

 b43legacydbg(dev->wl, "Wireless interface started\n");
out:
 return err;
}
