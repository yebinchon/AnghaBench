
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {int mii_if; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 struct sis190_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int sis190_get_link_ksettings(struct net_device *dev,
         struct ethtool_link_ksettings *cmd)
{
 struct sis190_private *tp = netdev_priv(dev);

 mii_ethtool_get_link_ksettings(&tp->mii_if, cmd);

 return 0;
}
