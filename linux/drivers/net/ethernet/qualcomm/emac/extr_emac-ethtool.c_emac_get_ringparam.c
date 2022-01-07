
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;
struct emac_adapter {int tx_desc_cnt; int rx_desc_cnt; } ;


 int EMAC_MAX_RX_DESCS ;
 int EMAC_MAX_TX_DESCS ;
 struct emac_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void emac_get_ringparam(struct net_device *netdev,
          struct ethtool_ringparam *ring)
{
 struct emac_adapter *adpt = netdev_priv(netdev);

 ring->rx_max_pending = EMAC_MAX_RX_DESCS;
 ring->tx_max_pending = EMAC_MAX_TX_DESCS;
 ring->rx_pending = adpt->rx_desc_cnt;
 ring->tx_pending = adpt->tx_desc_cnt;
}
