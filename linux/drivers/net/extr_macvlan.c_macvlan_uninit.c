
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macvlan_port {int dev; scalar_t__ count; } ;
struct macvlan_dev {int pcpu_stats; struct macvlan_port* port; } ;


 int free_percpu (int ) ;
 int macvlan_flush_sources (struct macvlan_port*,struct macvlan_dev*) ;
 int macvlan_port_destroy (int ) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void macvlan_uninit(struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct macvlan_port *port = vlan->port;

 free_percpu(vlan->pcpu_stats);

 macvlan_flush_sources(port, vlan);
 port->count -= 1;
 if (!port->count)
  macvlan_port_destroy(port->dev);
}
