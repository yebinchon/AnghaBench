
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {int tx_stats; int stats; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void ixgbe_reset_txr_stats(struct ixgbe_ring *tx_ring)
{
 memset(&tx_ring->stats, 0, sizeof(tx_ring->stats));
 memset(&tx_ring->tx_stats, 0, sizeof(tx_ring->tx_stats));
}
