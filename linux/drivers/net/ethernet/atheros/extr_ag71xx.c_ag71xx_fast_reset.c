
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dev_addr; int mtu; } ;
struct TYPE_2__ {int descs_dma; scalar_t__ dirty; scalar_t__ curr; } ;
struct ag71xx {TYPE_1__ tx_ring; struct net_device* ndev; int mac_reset; } ;


 int AG71XX_REG_MAC_MFL ;
 int AG71XX_REG_MII_CFG ;
 int AG71XX_REG_RX_DESC ;
 int AG71XX_REG_TX_DESC ;
 int ag71xx_dma_reset (struct ag71xx*) ;
 int ag71xx_hw_set_macaddr (struct ag71xx*,int ) ;
 int ag71xx_hw_setup (struct ag71xx*) ;
 int ag71xx_hw_stop (struct ag71xx*) ;
 int ag71xx_max_frame_len (int ) ;
 int ag71xx_rr (struct ag71xx*,int ) ;
 int ag71xx_tx_packets (struct ag71xx*,int) ;
 int ag71xx_wr (struct ag71xx*,int ,int ) ;
 int netdev_reset_queue (struct net_device*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ag71xx_fast_reset(struct ag71xx *ag)
{
 struct net_device *dev = ag->ndev;
 u32 rx_ds;
 u32 mii_reg;

 ag71xx_hw_stop(ag);

 mii_reg = ag71xx_rr(ag, AG71XX_REG_MII_CFG);
 rx_ds = ag71xx_rr(ag, AG71XX_REG_RX_DESC);

 ag71xx_tx_packets(ag, 1);

 reset_control_assert(ag->mac_reset);
 usleep_range(10, 20);
 reset_control_deassert(ag->mac_reset);
 usleep_range(10, 20);

 ag71xx_dma_reset(ag);
 ag71xx_hw_setup(ag);
 ag->tx_ring.curr = 0;
 ag->tx_ring.dirty = 0;
 netdev_reset_queue(ag->ndev);


 ag71xx_wr(ag, AG71XX_REG_MAC_MFL,
    ag71xx_max_frame_len(ag->ndev->mtu));

 ag71xx_wr(ag, AG71XX_REG_RX_DESC, rx_ds);
 ag71xx_wr(ag, AG71XX_REG_TX_DESC, ag->tx_ring.descs_dma);
 ag71xx_wr(ag, AG71XX_REG_MII_CFG, mii_reg);

 ag71xx_hw_set_macaddr(ag, dev->dev_addr);
}
