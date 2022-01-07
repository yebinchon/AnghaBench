
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ SYSTEM_POWER_OFF ;
 int dev_close (struct net_device*) ;
 struct tg3* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 scalar_t__ system_state ;
 int tg3_power_down (struct tg3*) ;

__attribute__((used)) static void tg3_shutdown(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct tg3 *tp = netdev_priv(dev);

 rtnl_lock();
 netif_device_detach(dev);

 if (netif_running(dev))
  dev_close(dev);

 if (system_state == SYSTEM_POWER_OFF)
  tg3_power_down(tp);

 rtnl_unlock();
}
