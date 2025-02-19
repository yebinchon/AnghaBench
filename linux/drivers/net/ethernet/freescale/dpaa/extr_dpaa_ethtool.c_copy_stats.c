
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ rx_errors; scalar_t__ tx_errors; scalar_t__ tx_packets; scalar_t__ rx_packets; } ;
struct dpaa_percpu_priv {TYPE_1__ stats; scalar_t__ tx_frag_skbuffs; scalar_t__ tx_confirm; scalar_t__ in_interrupt; } ;


 int DPAA_BPS_NUM ;

__attribute__((used)) static void copy_stats(struct dpaa_percpu_priv *percpu_priv, int num_cpus,
         int crr_cpu, u64 *bp_count, u64 *data)
{
 int num_values = num_cpus + 1;
 int crr = 0, j;


 data[crr * num_values + crr_cpu] = percpu_priv->in_interrupt;
 data[crr++ * num_values + num_cpus] += percpu_priv->in_interrupt;

 data[crr * num_values + crr_cpu] = percpu_priv->stats.rx_packets;
 data[crr++ * num_values + num_cpus] += percpu_priv->stats.rx_packets;

 data[crr * num_values + crr_cpu] = percpu_priv->stats.tx_packets;
 data[crr++ * num_values + num_cpus] += percpu_priv->stats.tx_packets;

 data[crr * num_values + crr_cpu] = percpu_priv->tx_confirm;
 data[crr++ * num_values + num_cpus] += percpu_priv->tx_confirm;

 data[crr * num_values + crr_cpu] = percpu_priv->tx_frag_skbuffs;
 data[crr++ * num_values + num_cpus] += percpu_priv->tx_frag_skbuffs;

 data[crr * num_values + crr_cpu] = percpu_priv->stats.tx_errors;
 data[crr++ * num_values + num_cpus] += percpu_priv->stats.tx_errors;

 data[crr * num_values + crr_cpu] = percpu_priv->stats.rx_errors;
 data[crr++ * num_values + num_cpus] += percpu_priv->stats.rx_errors;

 for (j = 0; j < DPAA_BPS_NUM; j++) {
  data[crr * num_values + crr_cpu] = bp_count[j];
  data[crr++ * num_values + num_cpus] += bp_count[j];
 }
}
