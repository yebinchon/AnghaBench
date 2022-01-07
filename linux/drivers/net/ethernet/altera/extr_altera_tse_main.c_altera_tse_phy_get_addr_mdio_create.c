
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct altera_tse_private {scalar_t__ phy_addr; TYPE_1__* device; int phy_iface; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int ENODEV ;
 scalar_t__ PHY_MAX_ADDR ;
 scalar_t__ POLL_PHY ;
 int altera_tse_mdio_create (struct net_device*,int ) ;
 int atomic_add_return (int,int *) ;
 int instance_count ;
 int netdev_err (struct net_device*,char*,scalar_t__) ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 int of_get_phy_mode (struct device_node*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;

__attribute__((used)) static int altera_tse_phy_get_addr_mdio_create(struct net_device *dev)
{
 struct altera_tse_private *priv = netdev_priv(dev);
 struct device_node *np = priv->device->of_node;
 int ret = 0;

 priv->phy_iface = of_get_phy_mode(np);


 if (!priv->phy_iface)
  return 0;





 if (of_property_read_u32(priv->device->of_node, "phy-addr",
    &priv->phy_addr)) {
  priv->phy_addr = POLL_PHY;
 }

 if (!((priv->phy_addr == POLL_PHY) ||
    ((priv->phy_addr >= 0) && (priv->phy_addr < PHY_MAX_ADDR)))) {
  netdev_err(dev, "invalid phy-addr specified %d\n",
   priv->phy_addr);
  return -ENODEV;
 }


 ret = altera_tse_mdio_create(dev,
      atomic_add_return(1, &instance_count));

 if (ret)
  return -ENODEV;

 return 0;
}
