
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int txd_cnt; int rxd_cnt; } ;
struct nfp_net {TYPE_1__ dp; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int NFP_NET_MAX_RX_DESCS ;
 int NFP_NET_MAX_TX_DESCS ;
 struct nfp_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static void nfp_net_get_ringparam(struct net_device *netdev,
      struct ethtool_ringparam *ring)
{
 struct nfp_net *nn = netdev_priv(netdev);

 ring->rx_max_pending = NFP_NET_MAX_RX_DESCS;
 ring->tx_max_pending = NFP_NET_MAX_TX_DESCS;
 ring->rx_pending = nn->dp.rxd_cnt;
 ring->tx_pending = nn->dp.txd_cnt;
}
