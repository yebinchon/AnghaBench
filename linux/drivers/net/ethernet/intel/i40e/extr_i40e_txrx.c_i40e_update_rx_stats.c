
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int packets; unsigned int bytes; } ;
struct i40e_ring {TYPE_2__* q_vector; int syncp; TYPE_1__ stats; } ;
struct TYPE_6__ {unsigned int total_packets; unsigned int total_bytes; } ;
struct TYPE_5__ {TYPE_3__ rx; } ;


 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

void i40e_update_rx_stats(struct i40e_ring *rx_ring,
     unsigned int total_rx_bytes,
     unsigned int total_rx_packets)
{
 u64_stats_update_begin(&rx_ring->syncp);
 rx_ring->stats.packets += total_rx_packets;
 rx_ring->stats.bytes += total_rx_bytes;
 u64_stats_update_end(&rx_ring->syncp);
 rx_ring->q_vector->rx.total_packets += total_rx_packets;
 rx_ring->q_vector->rx.total_bytes += total_rx_bytes;
}
