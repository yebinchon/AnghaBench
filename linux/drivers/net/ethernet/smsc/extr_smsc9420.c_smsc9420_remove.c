
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc9420_pdata {int tx_buffers; int rx_buffers; scalar_t__ ioaddr; int rx_dma_addr; int rx_ring; int tx_ring; } ;
struct smsc9420_dma_desc {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ LAN9420_CPSR_ENDIAN_OFFSET ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 int free_netdev (struct net_device*) ;
 int iounmap (scalar_t__) ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void smsc9420_remove(struct pci_dev *pdev)
{
 struct net_device *dev;
 struct smsc9420_pdata *pd;

 dev = pci_get_drvdata(pdev);
 if (!dev)
  return;

 pd = netdev_priv(dev);
 unregister_netdev(dev);


 BUG_ON(pd->tx_buffers);
 BUG_ON(pd->rx_buffers);

 BUG_ON(!pd->tx_ring);
 BUG_ON(!pd->rx_ring);

 pci_free_consistent(pdev, sizeof(struct smsc9420_dma_desc) *
  (RX_RING_SIZE + TX_RING_SIZE), pd->rx_ring, pd->rx_dma_addr);

 iounmap(pd->ioaddr - LAN9420_CPSR_ENDIAN_OFFSET);
 pci_release_regions(pdev);
 free_netdev(dev);
 pci_disable_device(pdev);
}
