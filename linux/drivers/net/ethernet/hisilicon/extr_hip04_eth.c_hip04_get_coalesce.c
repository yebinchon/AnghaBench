
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hip04_priv {int tx_coalesce_frames; int tx_coalesce_usecs; } ;
struct ethtool_coalesce {int tx_max_coalesced_frames; int tx_coalesce_usecs; } ;


 struct hip04_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hip04_get_coalesce(struct net_device *netdev,
         struct ethtool_coalesce *ec)
{
 struct hip04_priv *priv = netdev_priv(netdev);

 ec->tx_coalesce_usecs = priv->tx_coalesce_usecs;
 ec->tx_max_coalesced_frames = priv->tx_coalesce_frames;

 return 0;
}
