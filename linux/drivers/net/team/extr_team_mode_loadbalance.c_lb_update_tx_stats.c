
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lb_stats {unsigned int tx_bytes; } ;
struct lb_priv {int pcpu_stats; } ;
struct lb_port_priv {int pcpu_stats; } ;
struct lb_pcpu_stats {int syncp; struct lb_stats* hash_stats; } ;


 void* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void lb_update_tx_stats(unsigned int tx_bytes, struct lb_priv *lb_priv,
          struct lb_port_priv *lb_port_priv,
          unsigned char hash)
{
 struct lb_pcpu_stats *pcpu_stats;
 struct lb_stats *port_stats;
 struct lb_stats *hash_stats;

 pcpu_stats = this_cpu_ptr(lb_priv->pcpu_stats);
 port_stats = this_cpu_ptr(lb_port_priv->pcpu_stats);
 hash_stats = &pcpu_stats->hash_stats[hash];
 u64_stats_update_begin(&pcpu_stats->syncp);
 port_stats->tx_bytes += tx_bytes;
 hash_stats->tx_bytes += tx_bytes;
 u64_stats_update_end(&pcpu_stats->syncp);
}
