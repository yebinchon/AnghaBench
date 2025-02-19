
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ag71xx {struct net_device* ndev; } ;


 int AG71XX_DMA_DELAY ;
 int AG71XX_DMA_RETRY ;
 int AG71XX_REG_RX_CTRL ;
 int AG71XX_REG_TX_CTRL ;
 int RX_CTRL_RXE ;
 int TX_CTRL_TXE ;
 int ag71xx_rr (struct ag71xx*,int ) ;
 int hw ;
 int mdelay (int ) ;
 int netif_err (struct ag71xx*,int ,struct net_device*,char*) ;

__attribute__((used)) static void ag71xx_dma_wait_stop(struct ag71xx *ag)
{
 struct net_device *ndev = ag->ndev;
 int i;

 for (i = 0; i < AG71XX_DMA_RETRY; i++) {
  u32 rx, tx;

  mdelay(AG71XX_DMA_DELAY);

  rx = ag71xx_rr(ag, AG71XX_REG_RX_CTRL) & RX_CTRL_RXE;
  tx = ag71xx_rr(ag, AG71XX_REG_TX_CTRL) & TX_CTRL_TXE;
  if (!rx && !tx)
   return;
 }

 netif_err(ag, hw, ndev, "DMA stop operation timed out\n");
}
