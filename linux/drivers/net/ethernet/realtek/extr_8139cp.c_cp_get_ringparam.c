
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {void* tx_pending; void* rx_pending; void* tx_max_pending; void* rx_max_pending; } ;


 void* CP_RX_RING_SIZE ;
 void* CP_TX_RING_SIZE ;

__attribute__((used)) static void cp_get_ringparam(struct net_device *dev,
    struct ethtool_ringparam *ring)
{
 ring->rx_max_pending = CP_RX_RING_SIZE;
 ring->tx_max_pending = CP_TX_RING_SIZE;
 ring->rx_pending = CP_RX_RING_SIZE;
 ring->tx_pending = CP_TX_RING_SIZE;
}
