
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct bnx2 {int dummy; } ;


 int bnx2_netif_start (struct bnx2*,int) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void bnx2_io_resume(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct bnx2 *bp = netdev_priv(dev);

 rtnl_lock();
 if (netif_running(dev))
  bnx2_netif_start(bp, 1);

 netif_device_attach(dev);
 rtnl_unlock();
}
