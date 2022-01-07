
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oct_intrmod_cfg {int tx_mincnt_trigger; int tx_maxcnt_trigger; scalar_t__ tx_enable; int rx_mincnt_trigger; int rx_mintmr_trigger; int rx_maxtmr_trigger; int rx_maxcnt_trigger; scalar_t__ rx_enable; int minpkt_ratethr; int maxpkt_ratethr; int check_intrvl; } ;
struct lio {int dummy; } ;
struct ethtool_coalesce {int tx_max_coalesced_frames_low; int tx_max_coalesced_frames_high; int rx_max_coalesced_frames_low; int rx_coalesce_usecs_low; int rx_coalesce_usecs_high; int rx_max_coalesced_frames_high; int pkt_rate_low; int pkt_rate_high; int rate_sample_interval; } ;


 int octnet_set_intrmod_cfg (struct lio*,struct oct_intrmod_cfg*) ;

__attribute__((used)) static int oct_cfg_adaptive_intr(struct lio *lio,
     struct oct_intrmod_cfg *intrmod_cfg,
     struct ethtool_coalesce *intr_coal)
{
 int ret = 0;

 if (intrmod_cfg->rx_enable || intrmod_cfg->tx_enable) {
  intrmod_cfg->check_intrvl = intr_coal->rate_sample_interval;
  intrmod_cfg->maxpkt_ratethr = intr_coal->pkt_rate_high;
  intrmod_cfg->minpkt_ratethr = intr_coal->pkt_rate_low;
 }
 if (intrmod_cfg->rx_enable) {
  intrmod_cfg->rx_maxcnt_trigger =
   intr_coal->rx_max_coalesced_frames_high;
  intrmod_cfg->rx_maxtmr_trigger =
   intr_coal->rx_coalesce_usecs_high;
  intrmod_cfg->rx_mintmr_trigger =
   intr_coal->rx_coalesce_usecs_low;
  intrmod_cfg->rx_mincnt_trigger =
   intr_coal->rx_max_coalesced_frames_low;
 }
 if (intrmod_cfg->tx_enable) {
  intrmod_cfg->tx_maxcnt_trigger =
   intr_coal->tx_max_coalesced_frames_high;
  intrmod_cfg->tx_mincnt_trigger =
   intr_coal->tx_max_coalesced_frames_low;
 }

 ret = octnet_set_intrmod_cfg(lio, intrmod_cfg);

 return ret;
}
