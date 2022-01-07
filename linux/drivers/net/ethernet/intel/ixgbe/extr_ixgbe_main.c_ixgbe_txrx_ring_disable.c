
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_ring {TYPE_1__* q_vector; } ;
struct ixgbe_adapter {struct ixgbe_ring** xdp_ring; struct ixgbe_ring** tx_ring; struct ixgbe_ring** rx_ring; } ;
struct TYPE_2__ {int napi; } ;


 int ixgbe_clean_rx_ring (struct ixgbe_ring*) ;
 int ixgbe_clean_tx_ring (struct ixgbe_ring*) ;
 int ixgbe_disable_rxr_hw (struct ixgbe_adapter*,struct ixgbe_ring*) ;
 int ixgbe_disable_txr (struct ixgbe_adapter*,struct ixgbe_ring*) ;
 int ixgbe_reset_rxr_stats (struct ixgbe_ring*) ;
 int ixgbe_reset_txr_stats (struct ixgbe_ring*) ;
 int napi_disable (int *) ;
 int synchronize_rcu () ;

void ixgbe_txrx_ring_disable(struct ixgbe_adapter *adapter, int ring)
{
 struct ixgbe_ring *rx_ring, *tx_ring, *xdp_ring;

 rx_ring = adapter->rx_ring[ring];
 tx_ring = adapter->tx_ring[ring];
 xdp_ring = adapter->xdp_ring[ring];

 ixgbe_disable_txr(adapter, tx_ring);
 if (xdp_ring)
  ixgbe_disable_txr(adapter, xdp_ring);
 ixgbe_disable_rxr_hw(adapter, rx_ring);

 if (xdp_ring)
  synchronize_rcu();


 napi_disable(&rx_ring->q_vector->napi);

 ixgbe_clean_tx_ring(tx_ring);
 if (xdp_ring)
  ixgbe_clean_tx_ring(xdp_ring);
 ixgbe_clean_rx_ring(rx_ring);

 ixgbe_reset_txr_stats(tx_ring);
 if (xdp_ring)
  ixgbe_reset_txr_stats(xdp_ring);
 ixgbe_reset_rxr_stats(rx_ring);
}
