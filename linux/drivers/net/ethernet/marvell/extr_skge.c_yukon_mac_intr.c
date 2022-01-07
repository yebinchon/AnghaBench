
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct skge_port {int netdev; } ;
struct skge_hw {struct net_device** dev; } ;
struct TYPE_2__ {int tx_fifo_errors; int rx_fifo_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int GMAC_IRQ_SRC ;
 int GMF_CLI_RX_FO ;
 int GMF_CLI_TX_FU ;
 int GM_IS_RX_FF_OR ;
 int GM_IS_TX_FF_UR ;
 int KERN_DEBUG ;
 int RX_GMF_CTRL_T ;
 int SK_REG (int,int ) ;
 int TX_GMF_CTRL_T ;
 int intr ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int netif_printk (struct skge_port*,int ,int ,int ,char*,int) ;
 int skge_read8 (struct skge_hw*,int ) ;
 int skge_write8 (struct skge_hw*,int ,int ) ;

__attribute__((used)) static void yukon_mac_intr(struct skge_hw *hw, int port)
{
 struct net_device *dev = hw->dev[port];
 struct skge_port *skge = netdev_priv(dev);
 u8 status = skge_read8(hw, SK_REG(port, GMAC_IRQ_SRC));

 netif_printk(skge, intr, KERN_DEBUG, skge->netdev,
       "mac interrupt status 0x%x\n", status);

 if (status & GM_IS_RX_FF_OR) {
  ++dev->stats.rx_fifo_errors;
  skge_write8(hw, SK_REG(port, RX_GMF_CTRL_T), GMF_CLI_RX_FO);
 }

 if (status & GM_IS_TX_FF_UR) {
  ++dev->stats.tx_fifo_errors;
  skge_write8(hw, SK_REG(port, TX_GMF_CTRL_T), GMF_CLI_TX_FU);
 }

}
