
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t modtype; } ;
struct port_info {TYPE_1__ phy; } ;
struct net_device {int dummy; } ;
struct adapter {struct net_device** port; } ;


 int netdev_info (struct net_device const*,char*,...) ;
 struct port_info* netdev_priv (struct net_device const*) ;
 size_t phy_modtype_none ;

void t3_os_phymod_changed(struct adapter *adap, int port_id)
{
 static const char *mod_str[] = {
  ((void*)0), "SR", "LR", "LRM", "TWINAX", "TWINAX", "unknown"
 };

 const struct net_device *dev = adap->port[port_id];
 const struct port_info *pi = netdev_priv(dev);

 if (pi->phy.modtype == phy_modtype_none)
  netdev_info(dev, "PHY module unplugged\n");
 else
  netdev_info(dev, "%s PHY module inserted\n",
       mod_str[pi->phy.modtype]);
}
