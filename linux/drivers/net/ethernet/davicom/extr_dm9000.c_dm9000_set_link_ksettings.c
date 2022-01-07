
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;
struct board_info {int mii; } ;


 int mii_ethtool_set_link_ksettings (int *,struct ethtool_link_ksettings const*) ;
 struct board_info* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static int dm9000_set_link_ksettings(struct net_device *dev,
         const struct ethtool_link_ksettings *cmd)
{
 struct board_info *dm = to_dm9000_board(dev);

 return mii_ethtool_set_link_ksettings(&dm->mii, cmd);
}
