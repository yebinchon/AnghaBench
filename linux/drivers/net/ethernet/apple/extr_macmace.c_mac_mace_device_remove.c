
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int irq; } ;
struct mace_data {int tx_ring_phys; int tx_ring; int device; int rx_ring_phys; int rx_ring; } ;


 int IRQ_MAC_MACE_DMA ;
 int MACE_BUFF_SIZE ;
 int N_RX_RING ;
 int N_TX_RING ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 struct mace_data* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int mac_mace_device_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct mace_data *mp = netdev_priv(dev);

 unregister_netdev(dev);

 free_irq(dev->irq, dev);
 free_irq(IRQ_MAC_MACE_DMA, dev);

 dma_free_coherent(mp->device, N_RX_RING * MACE_BUFF_SIZE,
                   mp->rx_ring, mp->rx_ring_phys);
 dma_free_coherent(mp->device, N_TX_RING * MACE_BUFF_SIZE,
                   mp->tx_ring, mp->tx_ring_phys);

 free_netdev(dev);

 return 0;
}
