
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvpp2_port {int phylink; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int ENOTSUPP ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;
 int phylink_ethtool_ksettings_set (int ,struct ethtool_link_ksettings const*) ;

__attribute__((used)) static int mvpp2_ethtool_set_link_ksettings(struct net_device *dev,
         const struct ethtool_link_ksettings *cmd)
{
 struct mvpp2_port *port = netdev_priv(dev);

 if (!port->phylink)
  return -ENOTSUPP;

 return phylink_ethtool_ksettings_set(port->phylink, cmd);
}
