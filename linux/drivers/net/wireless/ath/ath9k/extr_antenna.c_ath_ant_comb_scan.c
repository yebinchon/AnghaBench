
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_ant_comb {int low_rssi_thresh; int ant_ratio; int total_pkt_count; int main_total_rssi; int alt_total_rssi; int alt_recv_cnt; scalar_t__ count; int alt_good; int scan; int scan_not_start; scalar_t__ main_recv_cnt; int scan_start_time; int quick_scan_cnt; int ant_ratio2; } ;
struct ath_softc {int sc_ah; struct ath_ant_comb ant_comb; } ;
struct ath_rx_status {int* rs_rssi_ctl; scalar_t__ rs_moreaggr; } ;
struct ath_hw_antcomb_conf {int alt_lna_conf; int main_lna_conf; int lna1_lna2_delta; } ;


 int ANT_ALT ;
 int ANT_LNA_INC (struct ath_softc*,int ,int) ;
 int ANT_MAIN ;
 int ANT_STAT_INC (struct ath_softc*,int ,int ) ;
 int ATH_ANT_DIV_COMB_ALT_ANT_RATIO ;
 int ATH_ANT_DIV_COMB_ALT_ANT_RATIO2 ;
 int ATH_ANT_DIV_COMB_ALT_ANT_RATIO2_LOW_RSSI ;
 int ATH_ANT_DIV_COMB_ALT_ANT_RATIO_LOW_RSSI ;
 int ATH_ANT_DIV_COMB_LNA1 ;
 int ATH_ANT_DIV_COMB_LNA2 ;
 scalar_t__ ATH_ANT_DIV_COMB_MAX_COUNT ;
 int ATH_ANT_DIV_COMB_MAX_PKTCOUNT ;
 int ATH_ANT_RX_CURRENT_SHIFT ;
 int ATH_ANT_RX_MAIN_SHIFT ;
 int ATH_ANT_RX_MASK ;
 int ath9k_debug_stat_ant (struct ath_softc*,struct ath_hw_antcomb_conf*,int,int) ;
 int ath9k_hw_antdiv_comb_conf_get (int ,struct ath_hw_antcomb_conf*) ;
 int ath9k_hw_antdiv_comb_conf_set (int ,struct ath_hw_antcomb_conf*) ;
 int ath_ant_div_conf_fast_divbias (struct ath_hw_antcomb_conf*,struct ath_ant_comb*,int) ;
 int ath_ant_short_scan_check (struct ath_ant_comb*) ;
 int ath_ant_try_scan (struct ath_ant_comb*,struct ath_hw_antcomb_conf*,int,int,int) ;
 int ath_ant_try_switch (struct ath_hw_antcomb_conf*,struct ath_ant_comb*,int,int,int,int,int) ;
 int ath_lnaconf_alt_good_scan (struct ath_ant_comb*,struct ath_hw_antcomb_conf,int) ;
 int ath_select_ant_div_from_quick_scan (struct ath_ant_comb*,struct ath_hw_antcomb_conf*,int,int,int) ;
 int jiffies ;
 int recv_cnt ;

void ath_ant_comb_scan(struct ath_softc *sc, struct ath_rx_status *rs)
{
 struct ath_hw_antcomb_conf div_ant_conf;
 struct ath_ant_comb *antcomb = &sc->ant_comb;
 int alt_ratio = 0, alt_rssi_avg = 0, main_rssi_avg = 0, curr_alt_set;
 int curr_main_set;
 int main_rssi = rs->rs_rssi_ctl[0];
 int alt_rssi = rs->rs_rssi_ctl[1];
 int rx_ant_conf, main_ant_conf;
 bool short_scan = 0, ret;

 rx_ant_conf = (rs->rs_rssi_ctl[2] >> ATH_ANT_RX_CURRENT_SHIFT) &
         ATH_ANT_RX_MASK;
 main_ant_conf = (rs->rs_rssi_ctl[2] >> ATH_ANT_RX_MAIN_SHIFT) &
    ATH_ANT_RX_MASK;

 if (alt_rssi >= antcomb->low_rssi_thresh) {
  antcomb->ant_ratio = ATH_ANT_DIV_COMB_ALT_ANT_RATIO;
  antcomb->ant_ratio2 = ATH_ANT_DIV_COMB_ALT_ANT_RATIO2;
 } else {
  antcomb->ant_ratio = ATH_ANT_DIV_COMB_ALT_ANT_RATIO_LOW_RSSI;
  antcomb->ant_ratio2 = ATH_ANT_DIV_COMB_ALT_ANT_RATIO2_LOW_RSSI;
 }


 if (main_rssi > 0 && alt_rssi > 0) {
  antcomb->total_pkt_count++;
  antcomb->main_total_rssi += main_rssi;
  antcomb->alt_total_rssi += alt_rssi;

  if (main_ant_conf == rx_ant_conf)
   antcomb->main_recv_cnt++;
  else
   antcomb->alt_recv_cnt++;
 }

 if (main_ant_conf == rx_ant_conf) {
  ANT_STAT_INC(sc, ANT_MAIN, recv_cnt);
  ANT_LNA_INC(sc, ANT_MAIN, rx_ant_conf);
 } else {
  ANT_STAT_INC(sc, ANT_ALT, recv_cnt);
  ANT_LNA_INC(sc, ANT_ALT, rx_ant_conf);
 }


 short_scan = ath_ant_short_scan_check(antcomb);

 if (((antcomb->total_pkt_count < ATH_ANT_DIV_COMB_MAX_PKTCOUNT) ||
      rs->rs_moreaggr) && !short_scan)
  return;

 if (antcomb->total_pkt_count) {
  alt_ratio = ((antcomb->alt_recv_cnt * 100) /
        antcomb->total_pkt_count);
  main_rssi_avg = (antcomb->main_total_rssi /
     antcomb->total_pkt_count);
  alt_rssi_avg = (antcomb->alt_total_rssi /
     antcomb->total_pkt_count);
 }

 ath9k_hw_antdiv_comb_conf_get(sc->sc_ah, &div_ant_conf);
 curr_alt_set = div_ant_conf.alt_lna_conf;
 curr_main_set = div_ant_conf.main_lna_conf;
 antcomb->count++;

 if (antcomb->count == ATH_ANT_DIV_COMB_MAX_COUNT) {
  if (alt_ratio > antcomb->ant_ratio) {
   ath_lnaconf_alt_good_scan(antcomb, div_ant_conf,
        main_rssi_avg);
   antcomb->alt_good = 1;
  } else {
   antcomb->alt_good = 0;
  }

  antcomb->count = 0;
  antcomb->scan = 1;
  antcomb->scan_not_start = 1;
 }

 if (!antcomb->scan) {
  ret = ath_ant_try_switch(&div_ant_conf, antcomb, alt_ratio,
      alt_rssi_avg, main_rssi_avg,
      curr_main_set, curr_alt_set);
  if (ret)
   goto div_comb_done;
 }

 if (!antcomb->scan &&
     (alt_rssi_avg < (main_rssi_avg + div_ant_conf.lna1_lna2_delta)))
  goto div_comb_done;

 if (!antcomb->scan_not_start) {
  ath_ant_try_scan(antcomb, &div_ant_conf, curr_alt_set,
     alt_rssi_avg, main_rssi_avg);
 } else {
  if (!antcomb->alt_good) {
   antcomb->scan_not_start = 0;

   if (curr_main_set == ATH_ANT_DIV_COMB_LNA2) {
    div_ant_conf.main_lna_conf =
     ATH_ANT_DIV_COMB_LNA2;
    div_ant_conf.alt_lna_conf =
     ATH_ANT_DIV_COMB_LNA1;
   } else if (curr_main_set == ATH_ANT_DIV_COMB_LNA1) {
    div_ant_conf.main_lna_conf =
     ATH_ANT_DIV_COMB_LNA1;
    div_ant_conf.alt_lna_conf =
     ATH_ANT_DIV_COMB_LNA2;
   }
   goto div_comb_done;
  }
  ath_select_ant_div_from_quick_scan(antcomb, &div_ant_conf,
         main_rssi_avg, alt_rssi_avg,
         alt_ratio);
  antcomb->quick_scan_cnt++;
 }

div_comb_done:
 ath_ant_div_conf_fast_divbias(&div_ant_conf, antcomb, alt_ratio);
 ath9k_hw_antdiv_comb_conf_set(sc->sc_ah, &div_ant_conf);
 ath9k_debug_stat_ant(sc, &div_ant_conf, main_rssi_avg, alt_rssi_avg);

 antcomb->scan_start_time = jiffies;
 antcomb->total_pkt_count = 0;
 antcomb->main_total_rssi = 0;
 antcomb->alt_total_rssi = 0;
 antcomb->main_recv_cnt = 0;
 antcomb->alt_recv_cnt = 0;
}
