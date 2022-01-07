
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct au1000_private {scalar_t__ mac_enabled; TYPE_2__** tx_dma_ring; TYPE_1__** rx_dma_ring; scalar_t__ tx_full; int enable; } ;
struct TYPE_4__ {int buff_stat; } ;
struct TYPE_3__ {int buff_stat; } ;


 int MAC_EN_CLOCK_ENABLE ;
 int NUM_RX_DMA ;
 int NUM_TX_DMA ;
 int au1000_hard_stop (struct net_device*) ;
 int mdelay (int) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int wmb () ;
 int writel (int ,int ) ;

__attribute__((used)) static void au1000_reset_mac_unlocked(struct net_device *dev)
{
 struct au1000_private *const aup = netdev_priv(dev);
 int i;

 au1000_hard_stop(dev);

 writel(MAC_EN_CLOCK_ENABLE, aup->enable);
 wmb();
 mdelay(2);
 writel(0, aup->enable);
 wmb();
 mdelay(2);

 aup->tx_full = 0;
 for (i = 0; i < NUM_RX_DMA; i++) {

  aup->rx_dma_ring[i]->buff_stat &= ~0xf;
 }
 for (i = 0; i < NUM_TX_DMA; i++) {

  aup->tx_dma_ring[i]->buff_stat &= ~0xf;
 }

 aup->mac_enabled = 0;

}
