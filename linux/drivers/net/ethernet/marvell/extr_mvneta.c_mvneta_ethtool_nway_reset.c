
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvneta_port {int phylink; } ;


 struct mvneta_port* netdev_priv (struct net_device*) ;
 int phylink_ethtool_nway_reset (int ) ;

__attribute__((used)) static int mvneta_ethtool_nway_reset(struct net_device *dev)
{
 struct mvneta_port *pp = netdev_priv(dev);

 return phylink_ethtool_nway_reset(pp->phylink);
}
