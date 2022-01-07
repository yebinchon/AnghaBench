
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int netif_device_attach (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void bnxt_io_resume(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);

 rtnl_lock();

 netif_device_attach(netdev);

 rtnl_unlock();
}
