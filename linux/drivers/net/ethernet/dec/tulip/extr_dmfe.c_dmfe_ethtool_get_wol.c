
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;
struct dmfe_board_info {int wol_mode; } ;


 int WAKE_MAGIC ;
 int WAKE_PHY ;
 struct dmfe_board_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void dmfe_ethtool_get_wol(struct net_device *dev,
     struct ethtool_wolinfo *wolinfo)
{
 struct dmfe_board_info *db = netdev_priv(dev);

 wolinfo->supported = WAKE_PHY | WAKE_MAGIC;
 wolinfo->wolopts = db->wol_mode;
}
