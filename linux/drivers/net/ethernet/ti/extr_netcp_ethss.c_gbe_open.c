
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct netcp_intf {int hw_cap; } ;
struct net_device {int dummy; } ;
struct gbe_slave {int port_num; int open; } ;
struct gbe_priv {int stats_en_mask; int dev; scalar_t__ enable_ale; } ;
struct TYPE_2__ {int switch_to_port; int flags; int dma_channel; int dma_chan_name; } ;
struct gbe_intf {TYPE_1__ tx_pipe; struct gbe_slave* slave; struct gbe_priv* gbe_dev; } ;


 int ETH_SW_CAN_REMOVE_ETH_FCS ;
 int ETH_SW_CTL_P0_TX_CRC_REMOVE ;
 int GBE_CTL_P0_ENABLE ;
 int GBE_IDENT (int ) ;
 int GBE_MAJOR_VERSION (int ) ;
 int GBE_MINOR_VERSION (int ) ;
 int GBE_REG_ADDR (struct gbe_priv*,int ,int ) ;
 int GBE_RTL_VERSION (int ) ;
 int GBE_RXHOOK_ORDER ;
 int GBE_TXHOOK_ORDER ;
 scalar_t__ IS_SS_ID_MU (struct gbe_priv*) ;
 scalar_t__ IS_SS_ID_XGBE (struct gbe_priv*) ;
 int SWITCH_TO_PORT_IN_TAGINFO ;
 int control ;
 int dev_dbg (int ,char*,int ,int ,int,int ) ;
 int gbe_register_cpts (struct gbe_priv*) ;
 int gbe_rxhook ;
 int gbe_slave_open (struct gbe_intf*) ;
 int gbe_slave_stop (struct gbe_intf*) ;
 int gbe_txhook ;
 int id_ver ;
 int netcp_ethss_update_link_state (struct gbe_priv*,struct gbe_slave*,struct net_device*) ;
 int netcp_register_rxhook (struct netcp_intf*,int ,int ,struct gbe_intf*) ;
 int netcp_register_txhook (struct netcp_intf*,int ,int ,struct gbe_intf*) ;
 struct netcp_intf* netdev_priv (struct net_device*) ;
 int ptype ;
 int readl (int ) ;
 int stat_port_en ;
 int switch_regs ;
 int writel (int ,int ) ;

__attribute__((used)) static int gbe_open(void *intf_priv, struct net_device *ndev)
{
 struct gbe_intf *gbe_intf = intf_priv;
 struct gbe_priv *gbe_dev = gbe_intf->gbe_dev;
 struct netcp_intf *netcp = netdev_priv(ndev);
 struct gbe_slave *slave = gbe_intf->slave;
 int port_num = slave->port_num;
 u32 reg, val;
 int ret;

 reg = readl(GBE_REG_ADDR(gbe_dev, switch_regs, id_ver));
 dev_dbg(gbe_dev->dev, "initializing gbe version %d.%d (%d) GBE identification value 0x%x\n",
  GBE_MAJOR_VERSION(reg), GBE_MINOR_VERSION(reg),
  GBE_RTL_VERSION(reg), GBE_IDENT(reg));


 if (IS_SS_ID_XGBE(gbe_dev) || IS_SS_ID_MU(gbe_dev))
  gbe_intf->tx_pipe.flags = SWITCH_TO_PORT_IN_TAGINFO;

 if (gbe_dev->enable_ale)
  gbe_intf->tx_pipe.switch_to_port = 0;
 else
  gbe_intf->tx_pipe.switch_to_port = port_num;

 dev_dbg(gbe_dev->dev,
  "opened TX channel %s: %p with to port %d, flags %d\n",
  gbe_intf->tx_pipe.dma_chan_name,
  gbe_intf->tx_pipe.dma_channel,
  gbe_intf->tx_pipe.switch_to_port,
  gbe_intf->tx_pipe.flags);

 gbe_slave_stop(gbe_intf);


 writel(0, GBE_REG_ADDR(gbe_dev, switch_regs, ptype));


 val = GBE_CTL_P0_ENABLE;
 if (IS_SS_ID_MU(gbe_dev)) {
  val |= ETH_SW_CTL_P0_TX_CRC_REMOVE;
  netcp->hw_cap = ETH_SW_CAN_REMOVE_ETH_FCS;
 }
 writel(val, GBE_REG_ADDR(gbe_dev, switch_regs, control));


 writel(gbe_dev->stats_en_mask, GBE_REG_ADDR(gbe_dev, switch_regs,
          stat_port_en));

 ret = gbe_slave_open(gbe_intf);
 if (ret)
  goto fail;

 netcp_register_txhook(netcp, GBE_TXHOOK_ORDER, gbe_txhook, gbe_intf);
 netcp_register_rxhook(netcp, GBE_RXHOOK_ORDER, gbe_rxhook, gbe_intf);

 slave->open = 1;
 netcp_ethss_update_link_state(gbe_dev, slave, ndev);

 gbe_register_cpts(gbe_dev);

 return 0;

fail:
 gbe_slave_stop(gbe_intf);
 return ret;
}
