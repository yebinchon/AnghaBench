
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uli526x_board_info {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int ULi_ethtool_get_link_ksettings (struct uli526x_board_info*,struct ethtool_link_ksettings*) ;
 struct uli526x_board_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_get_link_ksettings(struct net_device *dev,
         struct ethtool_link_ksettings *cmd)
{
 struct uli526x_board_info *np = netdev_priv(dev);

 ULi_ethtool_get_link_ksettings(np, cmd);

 return 0;
}
