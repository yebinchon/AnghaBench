
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;
struct cpsw_common {int coal_intvl; } ;


 struct cpsw_common* ndev_to_cpsw (struct net_device*) ;

int cpsw_get_coalesce(struct net_device *ndev, struct ethtool_coalesce *coal)
{
 struct cpsw_common *cpsw = ndev_to_cpsw(ndev);

 coal->rx_coalesce_usecs = cpsw->coal_intvl;
 return 0;
}
