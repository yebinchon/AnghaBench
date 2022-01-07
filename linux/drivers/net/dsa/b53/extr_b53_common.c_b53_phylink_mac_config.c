
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phylink_link_state {scalar_t__ interface; int pause; int duplex; int speed; } ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* serdes_config ) (struct b53_device*,int,unsigned int,struct phylink_link_state const*) ;} ;


 unsigned int MLO_AN_FIXED ;
 unsigned int MLO_AN_PHY ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int b53_force_port_config (struct b53_device*,int,int ,int ,int ) ;
 scalar_t__ phy_interface_mode_is_8023z (scalar_t__) ;
 int stub1 (struct b53_device*,int,unsigned int,struct phylink_link_state const*) ;

void b53_phylink_mac_config(struct dsa_switch *ds, int port,
       unsigned int mode,
       const struct phylink_link_state *state)
{
 struct b53_device *dev = ds->priv;

 if (mode == MLO_AN_PHY)
  return;

 if (mode == MLO_AN_FIXED) {
  b53_force_port_config(dev, port, state->speed,
          state->duplex, state->pause);
  return;
 }

 if ((phy_interface_mode_is_8023z(state->interface) ||
      state->interface == PHY_INTERFACE_MODE_SGMII) &&
      dev->ops->serdes_config)
  dev->ops->serdes_config(dev, port, mode, state);
}
