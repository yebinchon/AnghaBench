
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct macb {TYPE_1__* ptp_info; } ;
struct ethtool_ts_info {int dummy; } ;
struct TYPE_2__ {int (* get_ts_info ) (struct net_device*,struct ethtool_ts_info*) ;} ;


 int ethtool_op_get_ts_info (struct net_device*,struct ethtool_ts_info*) ;
 struct macb* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*,struct ethtool_ts_info*) ;

__attribute__((used)) static int macb_get_ts_info(struct net_device *netdev,
       struct ethtool_ts_info *info)
{
 struct macb *bp = netdev_priv(netdev);

 if (bp->ptp_info)
  return bp->ptp_info->get_ts_info(netdev, info);

 return ethtool_op_get_ts_info(netdev, info);
}
