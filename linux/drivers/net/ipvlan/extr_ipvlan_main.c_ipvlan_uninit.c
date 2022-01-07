
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipvl_port {int dev; scalar_t__ count; } ;
struct ipvl_dev {int pcpu_stats; struct net_device* phy_dev; } ;


 int free_percpu (int ) ;
 int ipvlan_port_destroy (int ) ;
 struct ipvl_port* ipvlan_port_get_rtnl (struct net_device*) ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ipvlan_uninit(struct net_device *dev)
{
 struct ipvl_dev *ipvlan = netdev_priv(dev);
 struct net_device *phy_dev = ipvlan->phy_dev;
 struct ipvl_port *port;

 free_percpu(ipvlan->pcpu_stats);

 port = ipvlan_port_get_rtnl(phy_dev);
 port->count -= 1;
 if (!port->count)
  ipvlan_port_destroy(port->dev);
}
