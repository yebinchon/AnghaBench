
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_channels {int tx_count; int rx_count; int combined_count; } ;


 int netdev_err (struct net_device*,char*,int ,int ,int ) ;

__attribute__((used)) static void xgbe_print_set_channels_input(struct net_device *netdev,
       struct ethtool_channels *channels)
{
 netdev_err(netdev, "channel inputs: combined=%u, rx-only=%u, tx-only=%u\n",
     channels->combined_count, channels->rx_count,
     channels->tx_count);
}
