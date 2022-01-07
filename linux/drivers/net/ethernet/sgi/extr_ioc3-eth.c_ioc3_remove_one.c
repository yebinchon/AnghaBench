
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ioc3_private {int all_regs; int ioc3_timer; int txr_dma; int txr; int dma_dev; int rxr_dma; int rxr; } ;


 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int del_timer_sync (int *) ;
 int dma_direct_free_pages (int ,int ,int ,int ,int ) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ioc3_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct ioc3_private *ip = netdev_priv(dev);

 dma_direct_free_pages(ip->dma_dev, RX_RING_SIZE, ip->rxr,
         ip->rxr_dma, 0);
 dma_direct_free_pages(ip->dma_dev, TX_RING_SIZE, ip->txr,
         ip->txr_dma, 0);

 unregister_netdev(dev);
 del_timer_sync(&ip->ioc3_timer);

 iounmap(ip->all_regs);
 pci_release_regions(pdev);
 free_netdev(dev);



}
