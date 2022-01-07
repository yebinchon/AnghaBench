
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_ring {int state; TYPE_1__* q_vector; } ;
struct ixgbe_adapter {struct ixgbe_ring** xdp_ring; struct ixgbe_ring** tx_ring; struct ixgbe_ring** rx_ring; } ;
struct TYPE_2__ {int napi; } ;


 int __IXGBE_TX_DISABLED ;
 int clear_bit (int ,int *) ;
 int ixgbe_configure_rx_ring (struct ixgbe_adapter*,struct ixgbe_ring*) ;
 int ixgbe_configure_tx_ring (struct ixgbe_adapter*,struct ixgbe_ring*) ;
 int napi_enable (int *) ;

void ixgbe_txrx_ring_enable(struct ixgbe_adapter *adapter, int ring)
{
 struct ixgbe_ring *rx_ring, *tx_ring, *xdp_ring;

 rx_ring = adapter->rx_ring[ring];
 tx_ring = adapter->tx_ring[ring];
 xdp_ring = adapter->xdp_ring[ring];


 napi_enable(&rx_ring->q_vector->napi);

 ixgbe_configure_tx_ring(adapter, tx_ring);
 if (xdp_ring)
  ixgbe_configure_tx_ring(adapter, xdp_ring);
 ixgbe_configure_rx_ring(adapter, rx_ring);

 clear_bit(__IXGBE_TX_DISABLED, &tx_ring->state);
 if (xdp_ring)
  clear_bit(__IXGBE_TX_DISABLED, &xdp_ring->state);
}
