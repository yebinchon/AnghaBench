
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct octeon_device {int num_iqs; int num_oqs; TYPE_4__** droq; TYPE_2__** instr_queue; } ;
struct oct_vf_stats {int rx_bytes; int rx_packets; int tx_bytes; int tx_packets; } ;
struct TYPE_7__ {scalar_t__ rx_bytes_received; scalar_t__ rx_pkts_received; } ;
struct TYPE_8__ {TYPE_3__ stats; } ;
struct TYPE_5__ {scalar_t__ tx_tot_bytes; scalar_t__ tx_done; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;



__attribute__((used)) static void get_vf_stats(struct octeon_device *oct,
    struct oct_vf_stats *stats)
{
 int i;

 for (i = 0; i < oct->num_iqs; i++) {
  if (!oct->instr_queue[i])
   continue;
  stats->tx_packets += oct->instr_queue[i]->stats.tx_done;
  stats->tx_bytes += oct->instr_queue[i]->stats.tx_tot_bytes;
 }

 for (i = 0; i < oct->num_oqs; i++) {
  if (!oct->droq[i])
   continue;
  stats->rx_packets += oct->droq[i]->stats.rx_pkts_received;
  stats->rx_bytes += oct->droq[i]->stats.rx_bytes_received;
 }
}
