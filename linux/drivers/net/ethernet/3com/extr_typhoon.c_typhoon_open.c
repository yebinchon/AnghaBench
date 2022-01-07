
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typhoon {int ioaddr; int napi; } ;
struct net_device {int irq; int name; } ;


 int IRQF_SHARED ;
 int NoWait ;
 int PCI_D3hot ;
 int TYPHOON_STATUS_WAITING_FOR_HOST ;
 int WaitSleep ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct typhoon* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 scalar_t__ typhoon_boot_3XP (struct typhoon*,int ) ;
 int typhoon_interrupt ;
 int typhoon_request_firmware (struct typhoon*) ;
 int typhoon_reset (int ,int ) ;
 scalar_t__ typhoon_sleep (struct typhoon*,int ,int ) ;
 int typhoon_start_runtime (struct typhoon*) ;
 int typhoon_wakeup (struct typhoon*,int ) ;

__attribute__((used)) static int
typhoon_open(struct net_device *dev)
{
 struct typhoon *tp = netdev_priv(dev);
 int err;

 err = typhoon_request_firmware(tp);
 if (err)
  goto out;

 err = typhoon_wakeup(tp, WaitSleep);
 if(err < 0) {
  netdev_err(dev, "unable to wakeup device\n");
  goto out_sleep;
 }

 err = request_irq(dev->irq, typhoon_interrupt, IRQF_SHARED,
    dev->name, dev);
 if(err < 0)
  goto out_sleep;

 napi_enable(&tp->napi);

 err = typhoon_start_runtime(tp);
 if(err < 0) {
  napi_disable(&tp->napi);
  goto out_irq;
 }

 netif_start_queue(dev);
 return 0;

out_irq:
 free_irq(dev->irq, dev);

out_sleep:
 if(typhoon_boot_3XP(tp, TYPHOON_STATUS_WAITING_FOR_HOST) < 0) {
  netdev_err(dev, "unable to reboot into sleep img\n");
  typhoon_reset(tp->ioaddr, NoWait);
  goto out;
 }

 if(typhoon_sleep(tp, PCI_D3hot, 0) < 0)
  netdev_err(dev, "unable to go back to sleep\n");

out:
 return err;
}
