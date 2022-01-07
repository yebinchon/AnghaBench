
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;
struct aq_nic_s {int dummy; } ;


 int aq_nic_set_link_ksettings (struct aq_nic_s*,struct ethtool_link_ksettings const*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
aq_ethtool_set_link_ksettings(struct net_device *ndev,
         const struct ethtool_link_ksettings *cmd)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);

 return aq_nic_set_link_ksettings(aq_nic, cmd);
}
