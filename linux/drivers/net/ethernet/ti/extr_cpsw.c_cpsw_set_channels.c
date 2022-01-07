
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_channels {int dummy; } ;


 int cpsw_rx_handler ;
 int cpsw_set_channels_common (struct net_device*,struct ethtool_channels*,int ) ;

__attribute__((used)) static int cpsw_set_channels(struct net_device *ndev,
        struct ethtool_channels *chs)
{
 return cpsw_set_channels_common(ndev, chs, cpsw_rx_handler);
}
