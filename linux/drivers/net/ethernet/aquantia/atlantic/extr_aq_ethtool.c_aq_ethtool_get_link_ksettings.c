
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {unsigned int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct aq_nic_s {int dummy; } ;


 int aq_nic_get_link_ksettings (struct aq_nic_s*,struct ethtool_link_ksettings*) ;
 unsigned int aq_nic_get_link_speed (struct aq_nic_s*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static int aq_ethtool_get_link_ksettings(struct net_device *ndev,
      struct ethtool_link_ksettings *cmd)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);

 aq_nic_get_link_ksettings(aq_nic, cmd);
 cmd->base.speed = netif_carrier_ok(ndev) ?
    aq_nic_get_link_speed(aq_nic) : 0U;

 return 0;
}
