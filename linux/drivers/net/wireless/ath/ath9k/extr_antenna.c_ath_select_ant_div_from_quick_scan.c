
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw_antcomb_conf {int main_lna_conf; int lna1_lna2_switch_delta; int alt_lna_conf; } ;
struct ath_ant_comb {int quick_scan_cnt; int main_conf; int rssi_first; int rssi_second; int first_ratio; int alt_good; int scan_not_start; int scan; int rssi_third; int rssi_lna1; int rssi_lna2; int second_ratio; int total_pkt_count; int second_quick_scan_conf; int first_quick_scan_conf; } ;



 int ATH_ANT_DIV_COMB_LNA1_DELTA_HI ;
 int ATH_ANT_DIV_COMB_LNA1_DELTA_LOW ;
 int ATH_ANT_DIV_COMB_LNA1_DELTA_MID ;


 int ath_ant_set_alt_ratio (struct ath_ant_comb*,struct ath_hw_antcomb_conf*) ;
 int ath_is_alt_ant_ratio_better (struct ath_ant_comb*,int,int ,int ,int,int,int ) ;

__attribute__((used)) static void ath_select_ant_div_from_quick_scan(struct ath_ant_comb *antcomb,
           struct ath_hw_antcomb_conf *div_ant_conf,
           int main_rssi_avg, int alt_rssi_avg,
           int alt_ratio)
{

 switch (antcomb->quick_scan_cnt) {
 case 0:

  div_ant_conf->main_lna_conf = antcomb->main_conf;
  div_ant_conf->alt_lna_conf = antcomb->first_quick_scan_conf;
  break;
 case 1:

  div_ant_conf->main_lna_conf = antcomb->main_conf;
  div_ant_conf->alt_lna_conf = antcomb->second_quick_scan_conf;
  antcomb->rssi_first = main_rssi_avg;
  antcomb->rssi_second = alt_rssi_avg;

  if (antcomb->main_conf == 130) {

   if (ath_is_alt_ant_ratio_better(antcomb, alt_ratio,
      ATH_ANT_DIV_COMB_LNA1_DELTA_HI,
      ATH_ANT_DIV_COMB_LNA1_DELTA_LOW,
      main_rssi_avg, alt_rssi_avg,
      antcomb->total_pkt_count))
    antcomb->first_ratio = 1;
   else
    antcomb->first_ratio = 0;
  } else if (antcomb->main_conf == 128) {
   if (ath_is_alt_ant_ratio_better(antcomb, alt_ratio,
      ATH_ANT_DIV_COMB_LNA1_DELTA_MID,
      ATH_ANT_DIV_COMB_LNA1_DELTA_LOW,
      main_rssi_avg, alt_rssi_avg,
      antcomb->total_pkt_count))
    antcomb->first_ratio = 1;
   else
    antcomb->first_ratio = 0;
  } else {
   if (ath_is_alt_ant_ratio_better(antcomb, alt_ratio,
      ATH_ANT_DIV_COMB_LNA1_DELTA_HI,
      0,
      main_rssi_avg, alt_rssi_avg,
      antcomb->total_pkt_count))
    antcomb->first_ratio = 1;
   else
    antcomb->first_ratio = 0;
  }
  break;
 case 2:
  antcomb->alt_good = 0;
  antcomb->scan_not_start = 0;
  antcomb->scan = 0;
  antcomb->rssi_first = main_rssi_avg;
  antcomb->rssi_third = alt_rssi_avg;

  switch(antcomb->second_quick_scan_conf) {
  case 130:
   antcomb->rssi_lna1 = alt_rssi_avg;
   break;
  case 128:
   antcomb->rssi_lna2 = alt_rssi_avg;
   break;
  case 129:
   if (antcomb->main_conf == 128)
    antcomb->rssi_lna2 = main_rssi_avg;
   else if (antcomb->main_conf == 130)
    antcomb->rssi_lna1 = main_rssi_avg;
   break;
  default:
   break;
  }

  if (antcomb->rssi_lna2 > antcomb->rssi_lna1 +
      div_ant_conf->lna1_lna2_switch_delta)
   div_ant_conf->main_lna_conf = 128;
  else
   div_ant_conf->main_lna_conf = 130;

  if (antcomb->main_conf == 130) {
   if (ath_is_alt_ant_ratio_better(antcomb, alt_ratio,
      ATH_ANT_DIV_COMB_LNA1_DELTA_HI,
      ATH_ANT_DIV_COMB_LNA1_DELTA_LOW,
      main_rssi_avg, alt_rssi_avg,
      antcomb->total_pkt_count))
    antcomb->second_ratio = 1;
   else
    antcomb->second_ratio = 0;
  } else if (antcomb->main_conf == 128) {
   if (ath_is_alt_ant_ratio_better(antcomb, alt_ratio,
      ATH_ANT_DIV_COMB_LNA1_DELTA_MID,
      ATH_ANT_DIV_COMB_LNA1_DELTA_LOW,
      main_rssi_avg, alt_rssi_avg,
      antcomb->total_pkt_count))
    antcomb->second_ratio = 1;
   else
    antcomb->second_ratio = 0;
  } else {
   if (ath_is_alt_ant_ratio_better(antcomb, alt_ratio,
      ATH_ANT_DIV_COMB_LNA1_DELTA_HI,
      0,
      main_rssi_avg, alt_rssi_avg,
      antcomb->total_pkt_count))
    antcomb->second_ratio = 1;
   else
    antcomb->second_ratio = 0;
  }

  ath_ant_set_alt_ratio(antcomb, div_ant_conf);

  break;
 default:
  break;
 }
}
