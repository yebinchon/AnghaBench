
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int bytes; unsigned int packets; } ;
struct i40e_ring {TYPE_2__* q_vector; int syncp; TYPE_1__ stats; } ;
struct TYPE_6__ {unsigned int total_bytes; unsigned int total_packets; } ;
struct TYPE_5__ {TYPE_3__ tx; } ;


 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static inline void i40e_update_tx_stats(struct i40e_ring *tx_ring,
     unsigned int total_packets,
     unsigned int total_bytes)
{
 u64_stats_update_begin(&tx_ring->syncp);
 tx_ring->stats.bytes += total_bytes;
 tx_ring->stats.packets += total_packets;
 u64_stats_update_end(&tx_ring->syncp);
 tx_ring->q_vector->tx.total_bytes += total_bytes;
 tx_ring->q_vector->tx.total_packets += total_packets;
}
