
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct device_node* of_node; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;
struct phy_device {int speed; int is_pseudo_fixed_link; int supported; TYPE_2__ mdio; int asym_pause; int pause; int duplex; scalar_t__ link; } ;
struct gpio_desc {int speed; int is_pseudo_fixed_link; int supported; TYPE_2__ mdio; int asym_pause; int pause; int duplex; scalar_t__ link; } ;
struct fixed_phy_status {int speed; int asym_pause; int pause; int duplex; scalar_t__ link; } ;
struct fixed_mdio_bus {TYPE_3__* mii_bus; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {scalar_t__ state; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 struct phy_device* ERR_CAST (struct phy_device*) ;
 struct phy_device* ERR_PTR (int) ;
 int ETHTOOL_LINK_MODE_1000baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_1000baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_100baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_100baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_10baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_10baseT_Half_BIT ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 scalar_t__ MDIOBUS_REGISTERED ;
 int PHY_MAX_ADDR ;



 int fixed_phy_add_gpiod (unsigned int,int,struct fixed_phy_status*,struct phy_device*) ;
 int fixed_phy_del (int) ;
 struct phy_device* fixed_phy_get_gpiod (struct device_node*) ;
 struct phy_device* get_phy_device (TYPE_3__*,int,int) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int linkmode_set_bit (int ,int ) ;
 int of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int phy_advertise_supported (struct phy_device*) ;
 int phy_device_free (struct phy_device*) ;
 int phy_device_register (struct phy_device*) ;
 int phy_fixed_ida ;
 struct fixed_mdio_bus platform_fmb ;

__attribute__((used)) static struct phy_device *__fixed_phy_register(unsigned int irq,
            struct fixed_phy_status *status,
            struct device_node *np,
            struct gpio_desc *gpiod)
{
 struct fixed_mdio_bus *fmb = &platform_fmb;
 struct phy_device *phy;
 int phy_addr;
 int ret;

 if (!fmb->mii_bus || fmb->mii_bus->state != MDIOBUS_REGISTERED)
  return ERR_PTR(-EPROBE_DEFER);


 if (!gpiod) {
  gpiod = fixed_phy_get_gpiod(np);
  if (IS_ERR(gpiod))
   return ERR_CAST(gpiod);
 }


 phy_addr = ida_simple_get(&phy_fixed_ida, 0, PHY_MAX_ADDR, GFP_KERNEL);
 if (phy_addr < 0)
  return ERR_PTR(phy_addr);

 ret = fixed_phy_add_gpiod(irq, phy_addr, status, gpiod);
 if (ret < 0) {
  ida_simple_remove(&phy_fixed_ida, phy_addr);
  return ERR_PTR(ret);
 }

 phy = get_phy_device(fmb->mii_bus, phy_addr, 0);
 if (IS_ERR(phy)) {
  fixed_phy_del(phy_addr);
  return ERR_PTR(-EINVAL);
 }


 phy->link = status->link;
 if (status->link) {
  phy->speed = status->speed;
  phy->duplex = status->duplex;
  phy->pause = status->pause;
  phy->asym_pause = status->asym_pause;
 }

 of_node_get(np);
 phy->mdio.dev.of_node = np;
 phy->is_pseudo_fixed_link = 1;

 switch (status->speed) {
 case 128:
  linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
     phy->supported);
  linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
     phy->supported);

 case 129:
  linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Half_BIT,
     phy->supported);
  linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
     phy->supported);

 case 130:
 default:
  linkmode_set_bit(ETHTOOL_LINK_MODE_10baseT_Half_BIT,
     phy->supported);
  linkmode_set_bit(ETHTOOL_LINK_MODE_10baseT_Full_BIT,
     phy->supported);
 }

 phy_advertise_supported(phy);

 ret = phy_device_register(phy);
 if (ret) {
  phy_device_free(phy);
  of_node_put(np);
  fixed_phy_del(phy_addr);
  return ERR_PTR(ret);
 }

 return phy;
}
