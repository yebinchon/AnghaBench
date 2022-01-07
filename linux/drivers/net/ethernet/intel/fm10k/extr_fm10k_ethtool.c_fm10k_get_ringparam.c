
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fm10k_intfc {int tx_ring_count; int rx_ring_count; } ;
struct ethtool_ringparam {scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; int tx_pending; int rx_pending; scalar_t__ rx_jumbo_max_pending; scalar_t__ rx_mini_max_pending; int tx_max_pending; int rx_max_pending; } ;


 int FM10K_MAX_RXD ;
 int FM10K_MAX_TXD ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static void fm10k_get_ringparam(struct net_device *netdev,
    struct ethtool_ringparam *ring)
{
 struct fm10k_intfc *interface = netdev_priv(netdev);

 ring->rx_max_pending = FM10K_MAX_RXD;
 ring->tx_max_pending = FM10K_MAX_TXD;
 ring->rx_mini_max_pending = 0;
 ring->rx_jumbo_max_pending = 0;
 ring->rx_pending = interface->rx_ring_count;
 ring->tx_pending = interface->tx_ring_count;
 ring->rx_mini_pending = 0;
 ring->rx_jumbo_pending = 0;
}
