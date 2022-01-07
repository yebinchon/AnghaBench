
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_3__ {int OutPktsProtected; int OutOctetsProtected; int OutPktsEncrypted; int OutOctetsEncrypted; } ;
struct pcpu_tx_sc_stats {int syncp; TYPE_1__ stats; } ;
struct macsec_tx_sc {scalar_t__ encrypt; int stats; } ;
struct macsec_tx_sa {TYPE_2__* stats; } ;
struct TYPE_4__ {int OutPktsProtected; int OutPktsEncrypted; } ;


 int this_cpu_inc (int ) ;
 struct pcpu_tx_sc_stats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void macsec_count_tx(struct sk_buff *skb, struct macsec_tx_sc *tx_sc,
       struct macsec_tx_sa *tx_sa)
{
 struct pcpu_tx_sc_stats *txsc_stats = this_cpu_ptr(tx_sc->stats);

 u64_stats_update_begin(&txsc_stats->syncp);
 if (tx_sc->encrypt) {
  txsc_stats->stats.OutOctetsEncrypted += skb->len;
  txsc_stats->stats.OutPktsEncrypted++;
  this_cpu_inc(tx_sa->stats->OutPktsEncrypted);
 } else {
  txsc_stats->stats.OutOctetsProtected += skb->len;
  txsc_stats->stats.OutPktsProtected++;
  this_cpu_inc(tx_sa->stats->OutPktsProtected);
 }
 u64_stats_update_end(&txsc_stats->syncp);
}
