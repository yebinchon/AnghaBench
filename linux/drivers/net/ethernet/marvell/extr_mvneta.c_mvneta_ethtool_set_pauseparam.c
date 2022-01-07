
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvneta_port {int phylink; } ;
struct ethtool_pauseparam {int dummy; } ;


 struct mvneta_port* netdev_priv (struct net_device*) ;
 int phylink_ethtool_set_pauseparam (int ,struct ethtool_pauseparam*) ;

__attribute__((used)) static int mvneta_ethtool_set_pauseparam(struct net_device *dev,
      struct ethtool_pauseparam *pause)
{
 struct mvneta_port *pp = netdev_priv(dev);

 return phylink_ethtool_set_pauseparam(pp->phylink, pause);
}
