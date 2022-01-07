
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dev; } ;
struct axienet_local {int options; scalar_t__ eth_irq; scalar_t__ tx_irq; scalar_t__ rx_irq; int dma_err_tasklet; TYPE_1__* mii_bus; int phylink; } ;
struct TYPE_2__ {int mdio_lock; } ;


 int XAE_IE_OFFSET ;
 int XAE_OPTION_RXEN ;
 int XAE_OPTION_TXEN ;
 int XAXIDMA_CR_RUNSTOP_MASK ;
 int XAXIDMA_IRQ_ALL_MASK ;
 int XAXIDMA_RX_CR_OFFSET ;
 int XAXIDMA_RX_SR_OFFSET ;
 int XAXIDMA_SR_HALT_MASK ;
 int XAXIDMA_TX_CR_OFFSET ;
 int XAXIDMA_TX_SR_OFFSET ;
 int __axienet_device_reset (struct axienet_local*) ;
 int axienet_dma_bd_release (struct net_device*) ;
 int axienet_dma_in32 (struct axienet_local*,int ) ;
 int axienet_dma_out32 (struct axienet_local*,int ,int) ;
 int axienet_iow (struct axienet_local*,int ,int ) ;
 int axienet_mdio_disable (struct axienet_local*) ;
 int axienet_mdio_enable (struct axienet_local*) ;
 int axienet_setoptions (struct net_device*,int) ;
 int dev_dbg (int *,char*) ;
 int free_irq (scalar_t__,struct net_device*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct axienet_local* netdev_priv (struct net_device*) ;
 int phylink_disconnect_phy (int ) ;
 int phylink_stop (int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int axienet_stop(struct net_device *ndev)
{
 u32 cr, sr;
 int count;
 struct axienet_local *lp = netdev_priv(ndev);

 dev_dbg(&ndev->dev, "axienet_close()\n");

 phylink_stop(lp->phylink);
 phylink_disconnect_phy(lp->phylink);

 axienet_setoptions(ndev, lp->options &
      ~(XAE_OPTION_TXEN | XAE_OPTION_RXEN));

 cr = axienet_dma_in32(lp, XAXIDMA_RX_CR_OFFSET);
 cr &= ~(XAXIDMA_CR_RUNSTOP_MASK | XAXIDMA_IRQ_ALL_MASK);
 axienet_dma_out32(lp, XAXIDMA_RX_CR_OFFSET, cr);

 cr = axienet_dma_in32(lp, XAXIDMA_TX_CR_OFFSET);
 cr &= ~(XAXIDMA_CR_RUNSTOP_MASK | XAXIDMA_IRQ_ALL_MASK);
 axienet_dma_out32(lp, XAXIDMA_TX_CR_OFFSET, cr);

 axienet_iow(lp, XAE_IE_OFFSET, 0);


 sr = axienet_dma_in32(lp, XAXIDMA_RX_SR_OFFSET);
 for (count = 0; !(sr & XAXIDMA_SR_HALT_MASK) && count < 5; ++count) {
  msleep(20);
  sr = axienet_dma_in32(lp, XAXIDMA_RX_SR_OFFSET);
 }

 sr = axienet_dma_in32(lp, XAXIDMA_TX_SR_OFFSET);
 for (count = 0; !(sr & XAXIDMA_SR_HALT_MASK) && count < 5; ++count) {
  msleep(20);
  sr = axienet_dma_in32(lp, XAXIDMA_TX_SR_OFFSET);
 }


 mutex_lock(&lp->mii_bus->mdio_lock);
 axienet_mdio_disable(lp);
 __axienet_device_reset(lp);
 axienet_mdio_enable(lp);
 mutex_unlock(&lp->mii_bus->mdio_lock);

 tasklet_kill(&lp->dma_err_tasklet);

 if (lp->eth_irq > 0)
  free_irq(lp->eth_irq, ndev);
 free_irq(lp->tx_irq, ndev);
 free_irq(lp->rx_irq, ndev);

 axienet_dma_bd_release(ndev);
 return 0;
}
