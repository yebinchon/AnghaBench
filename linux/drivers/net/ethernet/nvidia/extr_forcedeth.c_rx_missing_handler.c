
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fe_priv {int swstats_rx_syncp; } ;


 int NV_RX_MISSEDFRAME ;
 int nv_txrx_stats_inc (int ) ;
 int stat_rx_missed_errors ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void rx_missing_handler(u32 flags, struct fe_priv *np)
{
 if (flags & NV_RX_MISSEDFRAME) {
  u64_stats_update_begin(&np->swstats_rx_syncp);
  nv_txrx_stats_inc(stat_rx_missed_errors);
  u64_stats_update_end(&np->swstats_rx_syncp);
 }
}
