
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int tx_frames; int rx_frames; int rx_usecs; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_max_coalesced_frames; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;


 int memset (struct ethtool_coalesce*,int ,int) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static int xgbe_get_coalesce(struct net_device *netdev,
        struct ethtool_coalesce *ec)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);

 memset(ec, 0, sizeof(struct ethtool_coalesce));

 ec->rx_coalesce_usecs = pdata->rx_usecs;
 ec->rx_max_coalesced_frames = pdata->rx_frames;

 ec->tx_max_coalesced_frames = pdata->tx_frames;

 return 0;
}
