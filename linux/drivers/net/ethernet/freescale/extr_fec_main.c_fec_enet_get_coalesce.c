
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fec_enet_private {int quirks; int tx_pkts_itr; int tx_time_itr; int rx_pkts_itr; int rx_time_itr; } ;
struct ethtool_coalesce {int tx_max_coalesced_frames; int tx_coalesce_usecs; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;


 int EOPNOTSUPP ;
 int FEC_QUIRK_HAS_COALESCE ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
fec_enet_get_coalesce(struct net_device *ndev, struct ethtool_coalesce *ec)
{
 struct fec_enet_private *fep = netdev_priv(ndev);

 if (!(fep->quirks & FEC_QUIRK_HAS_COALESCE))
  return -EOPNOTSUPP;

 ec->rx_coalesce_usecs = fep->rx_time_itr;
 ec->rx_max_coalesced_frames = fep->rx_pkts_itr;

 ec->tx_coalesce_usecs = fep->tx_time_itr;
 ec->tx_max_coalesced_frames = fep->tx_pkts_itr;

 return 0;
}
