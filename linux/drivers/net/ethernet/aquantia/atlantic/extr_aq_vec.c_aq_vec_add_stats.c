
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aq_vec_s {unsigned int tx_rings; struct aq_ring_s** ring; } ;
struct aq_ring_stats_tx_s {scalar_t__ queue_restarts; scalar_t__ errors; scalar_t__ bytes; scalar_t__ packets; } ;
struct aq_ring_stats_rx_s {scalar_t__ pg_reuses; scalar_t__ pg_flips; scalar_t__ pg_losts; scalar_t__ lro_packets; scalar_t__ jumbo_packets; scalar_t__ errors; scalar_t__ bytes; scalar_t__ packets; } ;
struct TYPE_2__ {struct aq_ring_stats_rx_s rx; struct aq_ring_stats_tx_s tx; } ;
struct aq_ring_s {TYPE_1__ stats; } ;


 size_t AQ_VEC_RX_ID ;
 size_t AQ_VEC_TX_ID ;

void aq_vec_add_stats(struct aq_vec_s *self,
        struct aq_ring_stats_rx_s *stats_rx,
        struct aq_ring_stats_tx_s *stats_tx)
{
 struct aq_ring_s *ring = ((void*)0);
 unsigned int r = 0U;

 for (r = 0U, ring = self->ring[0];
  self->tx_rings > r; ++r, ring = self->ring[r]) {
  struct aq_ring_stats_tx_s *tx = &ring[AQ_VEC_TX_ID].stats.tx;
  struct aq_ring_stats_rx_s *rx = &ring[AQ_VEC_RX_ID].stats.rx;

  stats_rx->packets += rx->packets;
  stats_rx->bytes += rx->bytes;
  stats_rx->errors += rx->errors;
  stats_rx->jumbo_packets += rx->jumbo_packets;
  stats_rx->lro_packets += rx->lro_packets;
  stats_rx->pg_losts += rx->pg_losts;
  stats_rx->pg_flips += rx->pg_flips;
  stats_rx->pg_reuses += rx->pg_reuses;

  stats_tx->packets += tx->packets;
  stats_tx->bytes += tx->bytes;
  stats_tx->errors += tx->errors;
  stats_tx->queue_restarts += tx->queue_restarts;
 }
}
