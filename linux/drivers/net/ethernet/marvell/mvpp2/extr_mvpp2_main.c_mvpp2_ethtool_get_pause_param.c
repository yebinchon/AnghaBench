
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvpp2_port {int phylink; } ;
struct ethtool_pauseparam {int dummy; } ;


 struct mvpp2_port* netdev_priv (struct net_device*) ;
 int phylink_ethtool_get_pauseparam (int ,struct ethtool_pauseparam*) ;

__attribute__((used)) static void mvpp2_ethtool_get_pause_param(struct net_device *dev,
       struct ethtool_pauseparam *pause)
{
 struct mvpp2_port *port = netdev_priv(dev);

 if (!port->phylink)
  return;

 phylink_ethtool_get_pauseparam(port->phylink, pause);
}
