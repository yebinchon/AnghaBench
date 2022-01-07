
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_tx_stats {scalar_t__ csum; scalar_t__ no_csum; scalar_t__ tso; scalar_t__ bytes; scalar_t__ pkts; } ;
struct ionic_rx_stats {scalar_t__ csum_error; scalar_t__ csum_complete; scalar_t__ csum_none; scalar_t__ bytes; scalar_t__ pkts; } ;
struct ionic_qcq {TYPE_1__* stats; } ;
struct ionic_lif_sw_stats {int rx_csum_error; int rx_csum_complete; int rx_csum_none; int rx_bytes; int rx_packets; int tx_csum; int tx_no_csum; int tx_tso; int tx_bytes; int tx_packets; } ;
struct ionic_lif {int dummy; } ;
struct TYPE_2__ {struct ionic_rx_stats rx; struct ionic_tx_stats tx; } ;


 int MAX_Q (struct ionic_lif*) ;
 struct ionic_qcq* lif_to_rxqcq (struct ionic_lif*,int) ;
 struct ionic_qcq* lif_to_txqcq (struct ionic_lif*,int) ;
 int memset (struct ionic_lif_sw_stats*,int ,int) ;

__attribute__((used)) static void ionic_get_lif_stats(struct ionic_lif *lif,
    struct ionic_lif_sw_stats *stats)
{
 struct ionic_tx_stats *tstats;
 struct ionic_rx_stats *rstats;
 struct ionic_qcq *txqcq;
 struct ionic_qcq *rxqcq;
 int q_num;

 memset(stats, 0, sizeof(*stats));

 for (q_num = 0; q_num < MAX_Q(lif); q_num++) {
  txqcq = lif_to_txqcq(lif, q_num);
  if (txqcq && txqcq->stats) {
   tstats = &txqcq->stats->tx;
   stats->tx_packets += tstats->pkts;
   stats->tx_bytes += tstats->bytes;
   stats->tx_tso += tstats->tso;
   stats->tx_no_csum += tstats->no_csum;
   stats->tx_csum += tstats->csum;
  }

  rxqcq = lif_to_rxqcq(lif, q_num);
  if (rxqcq && rxqcq->stats) {
   rstats = &rxqcq->stats->rx;
   stats->rx_packets += rstats->pkts;
   stats->rx_bytes += rstats->bytes;
   stats->rx_csum_none += rstats->csum_none;
   stats->rx_csum_complete += rstats->csum_complete;
   stats->rx_csum_error += rstats->csum_error;
  }
 }
}
