
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {TYPE_1__* ops; } ;
typedef int phy_interface_t ;
struct TYPE_2__ {int (* serdes_link_set ) (struct b53_device*,int,unsigned int,int ,int) ;} ;


 unsigned int MLO_AN_FIXED ;
 unsigned int MLO_AN_PHY ;
 int b53_force_link (struct b53_device*,int,int) ;
 scalar_t__ phy_interface_mode_is_8023z (int ) ;
 int stub1 (struct b53_device*,int,unsigned int,int ,int) ;

void b53_phylink_mac_link_down(struct dsa_switch *ds, int port,
          unsigned int mode,
          phy_interface_t interface)
{
 struct b53_device *dev = ds->priv;

 if (mode == MLO_AN_PHY)
  return;

 if (mode == MLO_AN_FIXED) {
  b53_force_link(dev, port, 0);
  return;
 }

 if (phy_interface_mode_is_8023z(interface) &&
     dev->ops->serdes_link_set)
  dev->ops->serdes_link_set(dev, port, mode, interface, 0);
}
