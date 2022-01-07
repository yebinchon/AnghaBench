
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typhoon {int napi; } ;
struct net_device {int irq; } ;


 int PCI_D3hot ;
 int TYPHOON_STATUS_WAITING_FOR_HOST ;
 int WaitSleep ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct typhoon* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ typhoon_boot_3XP (struct typhoon*,int ) ;
 int typhoon_free_rx_rings (struct typhoon*) ;
 int typhoon_init_rings (struct typhoon*) ;
 scalar_t__ typhoon_sleep (struct typhoon*,int ,int ) ;
 scalar_t__ typhoon_stop_runtime (struct typhoon*,int ) ;

__attribute__((used)) static int
typhoon_close(struct net_device *dev)
{
 struct typhoon *tp = netdev_priv(dev);

 netif_stop_queue(dev);
 napi_disable(&tp->napi);

 if(typhoon_stop_runtime(tp, WaitSleep) < 0)
  netdev_err(dev, "unable to stop runtime\n");


 free_irq(dev->irq, dev);

 typhoon_free_rx_rings(tp);
 typhoon_init_rings(tp);

 if(typhoon_boot_3XP(tp, TYPHOON_STATUS_WAITING_FOR_HOST) < 0)
  netdev_err(dev, "unable to boot sleep image\n");

 if(typhoon_sleep(tp, PCI_D3hot, 0) < 0)
  netdev_err(dev, "unable to put card to sleep\n");

 return 0;
}
