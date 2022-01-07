
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvpp2_port {int phylink; } ;


 int ENOTSUPP ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;
 int phylink_ethtool_nway_reset (int ) ;

__attribute__((used)) static int mvpp2_ethtool_nway_reset(struct net_device *dev)
{
 struct mvpp2_port *port = netdev_priv(dev);

 if (!port->phylink)
  return -ENOTSUPP;

 return phylink_ethtool_nway_reset(port->phylink);
}
