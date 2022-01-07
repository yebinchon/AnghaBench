
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {int tx_dma; void* TxDescRing; int rx_dma; void* RxDescRing; struct pci_dev* pci_dev; } ;
struct pci_dev {int irq; } ;
struct net_device {int name; } ;


 int ENOMEM ;
 int IRQF_SHARED ;
 int RX_RING_BYTES ;
 int TX_RING_BYTES ;
 struct sis190_private* netdev_priv (struct net_device*) ;
 void* pci_alloc_consistent (struct pci_dev*,int ,int *) ;
 int pci_free_consistent (struct pci_dev*,int ,void*,int ) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int sis190_delete_timer (struct net_device*) ;
 int sis190_hw_start (struct net_device*) ;
 int sis190_init_ring (struct net_device*) ;
 int sis190_irq ;
 int sis190_request_timer (struct net_device*) ;
 int sis190_rx_clear (struct sis190_private*) ;
 int sis190_set_rxbufsize (struct sis190_private*,struct net_device*) ;

__attribute__((used)) static int sis190_open(struct net_device *dev)
{
 struct sis190_private *tp = netdev_priv(dev);
 struct pci_dev *pdev = tp->pci_dev;
 int rc = -ENOMEM;

 sis190_set_rxbufsize(tp, dev);





 tp->TxDescRing = pci_alloc_consistent(pdev, TX_RING_BYTES, &tp->tx_dma);
 if (!tp->TxDescRing)
  goto out;

 tp->RxDescRing = pci_alloc_consistent(pdev, RX_RING_BYTES, &tp->rx_dma);
 if (!tp->RxDescRing)
  goto err_free_tx_0;

 rc = sis190_init_ring(dev);
 if (rc < 0)
  goto err_free_rx_1;

 sis190_request_timer(dev);

 rc = request_irq(pdev->irq, sis190_irq, IRQF_SHARED, dev->name, dev);
 if (rc < 0)
  goto err_release_timer_2;

 sis190_hw_start(dev);
out:
 return rc;

err_release_timer_2:
 sis190_delete_timer(dev);
 sis190_rx_clear(tp);
err_free_rx_1:
 pci_free_consistent(pdev, RX_RING_BYTES, tp->RxDescRing, tp->rx_dma);
err_free_tx_0:
 pci_free_consistent(pdev, TX_RING_BYTES, tp->TxDescRing, tp->tx_dma);
 goto out;
}
