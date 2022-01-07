
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phylink_link_state {scalar_t__ interface; } ;
struct phylink_config {int dev; } ;
struct net_device {int name; } ;
struct mvpp2_port {scalar_t__ phy_interface; scalar_t__ gop_id; int flags; TYPE_1__* priv; int comphy; } ;
struct TYPE_2__ {scalar_t__ hw_version; } ;


 scalar_t__ MVPP21 ;
 scalar_t__ MVPP22 ;
 int MVPP2_F_LOOPBACK ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int mvpp22_gop_mask_irq (struct mvpp2_port*) ;
 int mvpp22_gop_unmask_irq (struct mvpp2_port*) ;
 int mvpp22_mode_reconfigure (struct mvpp2_port*) ;
 int mvpp2_gmac_config (struct mvpp2_port*,unsigned int,struct phylink_link_state const*) ;
 scalar_t__ mvpp2_is_xlg (scalar_t__) ;
 int mvpp2_port_disable (struct mvpp2_port*) ;
 int mvpp2_port_enable (struct mvpp2_port*) ;
 int mvpp2_port_loopback_set (struct mvpp2_port*,struct phylink_link_state const*) ;
 int mvpp2_xlg_config (struct mvpp2_port*,unsigned int,struct phylink_link_state const*) ;
 int netdev_err (struct net_device*,char*,int ) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;
 scalar_t__ phy_interface_mode_is_8023z (scalar_t__) ;
 scalar_t__ phy_interface_mode_is_rgmii (scalar_t__) ;
 int phy_power_off (int ) ;
 struct net_device* to_net_dev (int ) ;

__attribute__((used)) static void mvpp2_mac_config(struct phylink_config *config, unsigned int mode,
        const struct phylink_link_state *state)
{
 struct net_device *dev = to_net_dev(config->dev);
 struct mvpp2_port *port = netdev_priv(dev);
 bool change_interface = port->phy_interface != state->interface;


 if (mvpp2_is_xlg(state->interface) && port->gop_id != 0) {
  netdev_err(dev, "Invalid mode on %s\n", dev->name);
  return;
 }


 mvpp2_port_disable(port);

 if (port->priv->hw_version == MVPP22 && change_interface) {
  mvpp22_gop_mask_irq(port);

  port->phy_interface = state->interface;


  phy_power_off(port->comphy);
  mvpp22_mode_reconfigure(port);
 }


 if (mvpp2_is_xlg(state->interface))
  mvpp2_xlg_config(port, mode, state);
 else if (phy_interface_mode_is_rgmii(state->interface) ||
   phy_interface_mode_is_8023z(state->interface) ||
   state->interface == PHY_INTERFACE_MODE_SGMII)
  mvpp2_gmac_config(port, mode, state);

 if (port->priv->hw_version == MVPP21 && port->flags & MVPP2_F_LOOPBACK)
  mvpp2_port_loopback_set(port, state);

 if (port->priv->hw_version == MVPP22 && change_interface)
  mvpp22_gop_unmask_irq(port);

 mvpp2_port_enable(port);
}
