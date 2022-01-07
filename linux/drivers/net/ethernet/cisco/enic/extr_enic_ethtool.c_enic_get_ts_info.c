
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ts_info {int so_timestamping; } ;


 int SOF_TIMESTAMPING_RX_SOFTWARE ;
 int SOF_TIMESTAMPING_SOFTWARE ;
 int SOF_TIMESTAMPING_TX_SOFTWARE ;

__attribute__((used)) static int enic_get_ts_info(struct net_device *netdev,
       struct ethtool_ts_info *info)
{
 info->so_timestamping = SOF_TIMESTAMPING_TX_SOFTWARE |
    SOF_TIMESTAMPING_RX_SOFTWARE |
    SOF_TIMESTAMPING_SOFTWARE;

 return 0;
}
