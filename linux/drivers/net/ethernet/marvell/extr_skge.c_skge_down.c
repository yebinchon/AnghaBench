
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int start; } ;
struct TYPE_4__ {int start; } ;
struct skge_port {int port; int * mem; int dma; int mem_size; TYPE_2__ tx_ring; TYPE_1__ rx_ring; struct skge_hw* hw; int napi; int link_timer; int netdev; } ;
struct skge_hw {scalar_t__ phy_type; long intr_mask; int ports; TYPE_3__* pdev; int hw_lock; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int irq; } ;


 int B0_IMSK ;
 long CSR_SET_RESET ;
 long CSR_STOP ;
 long GMF_RST_SET ;
 int LED_MODE_OFF ;
 long LED_REG_OFF ;
 int LNK_LED_REG ;
 long MFF_RST_SET ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 int Q_XA1 ;
 int Q_XA2 ;
 int RB_ADDR (int ,int ) ;
 int RB_CTRL ;
 long RB_DIS_OP_MD ;
 long RB_RST_SET ;
 int RX_GMF_CTRL_T ;
 int RX_MFF_CTRL2 ;
 scalar_t__ SK_PHY_XMAC ;
 int SK_REG (int,int ) ;
 int TXA_CTRL ;
 long TXA_DIS_ALLOC ;
 long TXA_DIS_FSYNC ;
 int TXA_ITI_INI ;
 int TXA_LIM_INI ;
 long TXA_STOP_RC ;
 int TX_GMF_CTRL_T ;
 int TX_MFF_CTRL2 ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct skge_hw*) ;
 int genesis_stop (struct skge_port*) ;
 int ifdown ;
 scalar_t__ is_genesis (struct skge_hw*) ;
 int kfree (int ) ;
 int napi_disable (int *) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_info (struct skge_port*,int ,int ,char*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_tx_lock_bh (struct net_device*) ;
 int netif_tx_unlock_bh (struct net_device*) ;
 int pci_free_consistent (TYPE_3__*,int ,int *,int ) ;
 long* portmask ;
 int skge_led (struct skge_port*,int ) ;
 int skge_read32 (struct skge_hw*,int ) ;
 int skge_rx_clean (struct skge_port*) ;
 int skge_rx_stop (struct skge_hw*,int) ;
 int skge_tx_clean (struct net_device*) ;
 int skge_write32 (struct skge_hw*,int ,long) ;
 int skge_write8 (struct skge_hw*,int ,long) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int * txqaddr ;
 int yukon_stop (struct skge_port*) ;

__attribute__((used)) static int skge_down(struct net_device *dev)
{
 struct skge_port *skge = netdev_priv(dev);
 struct skge_hw *hw = skge->hw;
 int port = skge->port;

 if (!skge->mem)
  return 0;

 netif_info(skge, ifdown, skge->netdev, "disabling interface\n");

 netif_tx_disable(dev);

 if (is_genesis(hw) && hw->phy_type == SK_PHY_XMAC)
  del_timer_sync(&skge->link_timer);

 napi_disable(&skge->napi);
 netif_carrier_off(dev);

 spin_lock_irq(&hw->hw_lock);
 hw->intr_mask &= ~portmask[port];
 skge_write32(hw, B0_IMSK, (hw->ports == 1) ? 0 : hw->intr_mask);
 skge_read32(hw, B0_IMSK);
 spin_unlock_irq(&hw->hw_lock);

 if (hw->ports == 1)
  free_irq(hw->pdev->irq, hw);

 skge_write8(skge->hw, SK_REG(skge->port, LNK_LED_REG), LED_REG_OFF);
 if (is_genesis(hw))
  genesis_stop(skge);
 else
  yukon_stop(skge);


 skge_write8(hw, Q_ADDR(txqaddr[port], Q_CSR), CSR_STOP);
 skge_write32(hw, RB_ADDR(txqaddr[port], RB_CTRL),
       RB_RST_SET|RB_DIS_OP_MD);



 skge_write8(hw, SK_REG(port, TXA_CTRL),
      TXA_DIS_FSYNC | TXA_DIS_ALLOC | TXA_STOP_RC);


 skge_write32(hw, SK_REG(port, TXA_ITI_INI), 0L);
 skge_write32(hw, SK_REG(port, TXA_LIM_INI), 0L);


 skge_write32(hw, Q_ADDR(txqaddr[port], Q_CSR), CSR_SET_RESET);
 skge_write32(hw, RB_ADDR(txqaddr[port], RB_CTRL), RB_RST_SET);


 skge_write8(hw, RB_ADDR(port == 0 ? Q_XA1 : Q_XA2, RB_CTRL), RB_RST_SET);

 skge_rx_stop(hw, port);

 if (is_genesis(hw)) {
  skge_write8(hw, SK_REG(port, TX_MFF_CTRL2), MFF_RST_SET);
  skge_write8(hw, SK_REG(port, RX_MFF_CTRL2), MFF_RST_SET);
 } else {
  skge_write8(hw, SK_REG(port, RX_GMF_CTRL_T), GMF_RST_SET);
  skge_write8(hw, SK_REG(port, TX_GMF_CTRL_T), GMF_RST_SET);
 }

 skge_led(skge, LED_MODE_OFF);

 netif_tx_lock_bh(dev);
 skge_tx_clean(dev);
 netif_tx_unlock_bh(dev);

 skge_rx_clean(skge);

 kfree(skge->rx_ring.start);
 kfree(skge->tx_ring.start);
 pci_free_consistent(hw->pdev, skge->mem_size, skge->mem, skge->dma);
 skge->mem = ((void*)0);
 return 0;
}
