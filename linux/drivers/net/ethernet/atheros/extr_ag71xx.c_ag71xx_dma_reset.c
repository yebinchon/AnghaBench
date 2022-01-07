
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ag71xx {int stop_desc_dma; struct net_device* ndev; } ;


 int AG71XX_REG_RX_CTRL ;
 int AG71XX_REG_RX_DESC ;
 int AG71XX_REG_RX_STATUS ;
 int AG71XX_REG_TX_CTRL ;
 int AG71XX_REG_TX_DESC ;
 int AG71XX_REG_TX_STATUS ;
 int RX_STATUS_BE ;
 int RX_STATUS_OF ;
 int RX_STATUS_PR ;
 int TX_STATUS_BE ;
 int TX_STATUS_PS ;
 int TX_STATUS_UR ;
 int ag71xx_dma_wait_stop (struct ag71xx*) ;
 int ag71xx_rr (struct ag71xx*,int ) ;
 int ag71xx_wr (struct ag71xx*,int ,int) ;
 int hw ;
 int netif_err (struct ag71xx*,int ,struct net_device*,char*,int) ;

__attribute__((used)) static void ag71xx_dma_reset(struct ag71xx *ag)
{
 struct net_device *ndev = ag->ndev;
 u32 val;
 int i;


 ag71xx_wr(ag, AG71XX_REG_RX_CTRL, 0);
 ag71xx_wr(ag, AG71XX_REG_TX_CTRL, 0);




 ag71xx_dma_wait_stop(ag);


 ag71xx_wr(ag, AG71XX_REG_TX_DESC, ag->stop_desc_dma);
 ag71xx_wr(ag, AG71XX_REG_RX_DESC, ag->stop_desc_dma);


 for (i = 0; i < 256; i++) {
  ag71xx_wr(ag, AG71XX_REG_RX_STATUS, RX_STATUS_PR);
  ag71xx_wr(ag, AG71XX_REG_TX_STATUS, TX_STATUS_PS);
 }


 ag71xx_wr(ag, AG71XX_REG_RX_STATUS, RX_STATUS_BE | RX_STATUS_OF);
 ag71xx_wr(ag, AG71XX_REG_TX_STATUS, TX_STATUS_BE | TX_STATUS_UR);

 val = ag71xx_rr(ag, AG71XX_REG_RX_STATUS);
 if (val)
  netif_err(ag, hw, ndev, "unable to clear DMA Rx status: %08x\n",
     val);

 val = ag71xx_rr(ag, AG71XX_REG_TX_STATUS);


 val &= ~0xff000000;

 if (val)
  netif_err(ag, hw, ndev, "unable to clear DMA Tx status: %08x\n",
     val);
}
