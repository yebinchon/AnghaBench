
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_tx_ring {int tx_fifo; } ;


 scalar_t__ MAX_TX_DESC_NEEDED ;
 scalar_t__ gve_tx_avail (struct gve_tx_ring*) ;
 scalar_t__ gve_tx_fifo_can_alloc (int *,int) ;

__attribute__((used)) static inline bool gve_can_tx(struct gve_tx_ring *tx, int bytes_required)
{
 return (gve_tx_avail(tx) >= MAX_TX_DESC_NEEDED &&
  gve_tx_fifo_can_alloc(&tx->tx_fifo, bytes_required));
}
