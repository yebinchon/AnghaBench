
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct net_device {int features; } ;
struct dsa_switch {TYPE_1__* ports; } ;
struct TYPE_2__ {struct net_device* slave; } ;


 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int dsa_is_user_port (struct dsa_switch*,int) ;

__attribute__((used)) static int sja1105_port_enable(struct dsa_switch *ds, int port,
          struct phy_device *phy)
{
 struct net_device *slave;

 if (!dsa_is_user_port(ds, port))
  return 0;

 slave = ds->ports[port].slave;

 slave->features &= ~NETIF_F_HW_VLAN_CTAG_FILTER;

 return 0;
}
