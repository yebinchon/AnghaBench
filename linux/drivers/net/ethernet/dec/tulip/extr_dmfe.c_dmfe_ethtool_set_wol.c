
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct dmfe_board_info {int wol_mode; } ;


 int EOPNOTSUPP ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_UCAST ;
 struct dmfe_board_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dmfe_ethtool_set_wol(struct net_device *dev,
    struct ethtool_wolinfo *wolinfo)
{
 struct dmfe_board_info *db = netdev_priv(dev);

 if (wolinfo->wolopts & (WAKE_UCAST | WAKE_MCAST | WAKE_BCAST |
       WAKE_ARP | WAKE_MAGICSECURE))
     return -EOPNOTSUPP;

 db->wol_mode = wolinfo->wolopts;
 return 0;
}
