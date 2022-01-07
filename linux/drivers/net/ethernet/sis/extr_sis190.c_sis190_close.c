
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {int * RxDescRing; int * TxDescRing; int rx_dma; int tx_dma; struct pci_dev* pci_dev; } ;
struct pci_dev {int irq; } ;
struct net_device {int dummy; } ;


 int RX_RING_BYTES ;
 int TX_RING_BYTES ;
 int free_irq (int ,struct net_device*) ;
 struct sis190_private* netdev_priv (struct net_device*) ;
 int pci_free_consistent (struct pci_dev*,int ,int *,int ) ;
 int sis190_down (struct net_device*) ;

__attribute__((used)) static int sis190_close(struct net_device *dev)
{
 struct sis190_private *tp = netdev_priv(dev);
 struct pci_dev *pdev = tp->pci_dev;

 sis190_down(dev);

 free_irq(pdev->irq, dev);

 pci_free_consistent(pdev, TX_RING_BYTES, tp->TxDescRing, tp->tx_dma);
 pci_free_consistent(pdev, RX_RING_BYTES, tp->RxDescRing, tp->rx_dma);

 tp->TxDescRing = ((void*)0);
 tp->RxDescRing = ((void*)0);

 return 0;
}
