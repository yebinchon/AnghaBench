
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvneta_port {int phylink; } ;
struct ethtool_link_ksettings {int dummy; } ;


 struct mvneta_port* netdev_priv (struct net_device*) ;
 int phylink_ethtool_ksettings_get (int ,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int
mvneta_ethtool_get_link_ksettings(struct net_device *ndev,
      struct ethtool_link_ksettings *cmd)
{
 struct mvneta_port *pp = netdev_priv(ndev);

 return phylink_ethtool_ksettings_get(pp->phylink, cmd);
}
