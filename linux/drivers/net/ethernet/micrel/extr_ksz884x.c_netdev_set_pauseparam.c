
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ksz_port {scalar_t__ force_link; int flow_ctrl; } ;
struct ksz_hw {scalar_t__ ksz_switch; int overrides; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; scalar_t__ autoneg; } ;
struct dev_priv {struct ksz_port port; struct dev_info* adapter; } ;
struct dev_info {int lock; struct ksz_hw hw; } ;


 int KS8842_SWITCH_CTRL_1_OFFSET ;
 int PAUSE_FLOW_CTRL ;
 int PHY_FLOW_CTRL ;
 int PHY_NO_FLOW_CTRL ;
 int SWITCH_RX_FLOW_CTRL ;
 int SWITCH_TX_FLOW_CTRL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 int port_set_link_speed (struct ksz_port*) ;
 int set_flow_ctrl (struct ksz_hw*,int,int) ;
 int sw_cfg (struct ksz_hw*,int ,int ,int) ;

__attribute__((used)) static int netdev_set_pauseparam(struct net_device *dev,
 struct ethtool_pauseparam *pause)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 struct ksz_hw *hw = &hw_priv->hw;
 struct ksz_port *port = &priv->port;

 mutex_lock(&hw_priv->lock);
 if (pause->autoneg) {
  if (!pause->rx_pause && !pause->tx_pause)
   port->flow_ctrl = PHY_NO_FLOW_CTRL;
  else
   port->flow_ctrl = PHY_FLOW_CTRL;
  hw->overrides &= ~PAUSE_FLOW_CTRL;
  port->force_link = 0;
  if (hw->ksz_switch) {
   sw_cfg(hw, KS8842_SWITCH_CTRL_1_OFFSET,
    SWITCH_RX_FLOW_CTRL, 1);
   sw_cfg(hw, KS8842_SWITCH_CTRL_1_OFFSET,
    SWITCH_TX_FLOW_CTRL, 1);
  }
  port_set_link_speed(port);
 } else {
  hw->overrides |= PAUSE_FLOW_CTRL;
  if (hw->ksz_switch) {
   sw_cfg(hw, KS8842_SWITCH_CTRL_1_OFFSET,
    SWITCH_RX_FLOW_CTRL, pause->rx_pause);
   sw_cfg(hw, KS8842_SWITCH_CTRL_1_OFFSET,
    SWITCH_TX_FLOW_CTRL, pause->tx_pause);
  } else
   set_flow_ctrl(hw, pause->rx_pause, pause->tx_pause);
 }
 mutex_unlock(&hw_priv->lock);

 return 0;
}
