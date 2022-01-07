
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int mii; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e100_get_link_ksettings(struct net_device *netdev,
       struct ethtool_link_ksettings *cmd)
{
 struct nic *nic = netdev_priv(netdev);

 mii_ethtool_get_link_ksettings(&nic->mii, cmd);

 return 0;
}
