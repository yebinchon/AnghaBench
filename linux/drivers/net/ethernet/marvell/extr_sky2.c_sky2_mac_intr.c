
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sky2_port {int dummy; } ;
struct sky2_hw {struct net_device** dev; } ;
struct TYPE_2__ {int tx_fifo_errors; int rx_fifo_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int GMAC_IRQ_SRC ;
 int GMF_CLI_RX_FO ;
 int GMF_CLI_TX_FU ;
 int GM_IS_RX_CO_OV ;
 int GM_IS_RX_FF_OR ;
 int GM_IS_TX_CO_OV ;
 int GM_IS_TX_FF_UR ;
 int GM_RX_IRQ_SRC ;
 int GM_TX_IRQ_SRC ;
 int RX_GMF_CTRL_T ;
 int SK_REG (unsigned int,int ) ;
 int TX_GMF_CTRL_T ;
 int gma_read16 (struct sky2_hw*,unsigned int,int ) ;
 int intr ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netif_info (struct sky2_port*,int ,struct net_device*,char*,int) ;
 int sky2_read8 (struct sky2_hw*,int ) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void sky2_mac_intr(struct sky2_hw *hw, unsigned port)
{
 struct net_device *dev = hw->dev[port];
 struct sky2_port *sky2 = netdev_priv(dev);
 u8 status = sky2_read8(hw, SK_REG(port, GMAC_IRQ_SRC));

 netif_info(sky2, intr, dev, "mac interrupt status 0x%x\n", status);

 if (status & GM_IS_RX_CO_OV)
  gma_read16(hw, port, GM_RX_IRQ_SRC);

 if (status & GM_IS_TX_CO_OV)
  gma_read16(hw, port, GM_TX_IRQ_SRC);

 if (status & GM_IS_RX_FF_OR) {
  ++dev->stats.rx_fifo_errors;
  sky2_write8(hw, SK_REG(port, RX_GMF_CTRL_T), GMF_CLI_RX_FO);
 }

 if (status & GM_IS_TX_FF_UR) {
  ++dev->stats.tx_fifo_errors;
  sky2_write8(hw, SK_REG(port, TX_GMF_CTRL_T), GMF_CLI_TX_FU);
 }
}
