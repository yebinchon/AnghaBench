
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {int rx_stats; int stats; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void ixgbe_reset_rxr_stats(struct ixgbe_ring *rx_ring)
{
 memset(&rx_ring->stats, 0, sizeof(rx_ring->stats));
 memset(&rx_ring->rx_stats, 0, sizeof(rx_ring->rx_stats));
}
