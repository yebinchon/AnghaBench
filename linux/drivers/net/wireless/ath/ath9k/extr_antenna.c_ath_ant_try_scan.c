
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw_antcomb_conf {int main_lna_conf; int alt_lna_conf; int lna1_lna2_switch_delta; } ;
struct ath_ant_comb {int rssi_lna2; int rssi_lna1; int scan; int rssi_add; int rssi_sub; } ;







__attribute__((used)) static void ath_ant_try_scan(struct ath_ant_comb *antcomb,
        struct ath_hw_antcomb_conf *conf,
        int curr_alt_set, int alt_rssi_avg,
        int main_rssi_avg)
{
 switch (curr_alt_set) {
 case 128:
  antcomb->rssi_lna2 = alt_rssi_avg;
  antcomb->rssi_lna1 = main_rssi_avg;
  antcomb->scan = 1;

  conf->main_lna_conf = 131;
  conf->alt_lna_conf = 129;
  break;
 case 131:
  antcomb->rssi_lna1 = alt_rssi_avg;
  antcomb->rssi_lna2 = main_rssi_avg;
  antcomb->scan = 1;

  conf->main_lna_conf = 128;
  conf->alt_lna_conf = 129;
  break;
 case 129:
  antcomb->rssi_add = alt_rssi_avg;
  antcomb->scan = 1;

  conf->alt_lna_conf = 130;
  break;
 case 130:
  antcomb->rssi_sub = alt_rssi_avg;
  antcomb->scan = 0;
  if (antcomb->rssi_lna2 >
      (antcomb->rssi_lna1 + conf->lna1_lna2_switch_delta)) {

   if ((antcomb->rssi_add > antcomb->rssi_lna1) &&
       (antcomb->rssi_add > antcomb->rssi_sub)) {

    conf->main_lna_conf = 128;
    conf->alt_lna_conf = 129;
   } else if (antcomb->rssi_sub >
       antcomb->rssi_lna1) {

    conf->main_lna_conf = 128;
    conf->alt_lna_conf = 130;
   } else {

    conf->main_lna_conf = 128;
    conf->alt_lna_conf = 131;
   }
  } else {

   if ((antcomb->rssi_add > antcomb->rssi_lna2) &&
       (antcomb->rssi_add > antcomb->rssi_sub)) {

    conf->main_lna_conf = 131;
    conf->alt_lna_conf = 129;
   } else if (antcomb->rssi_sub >
       antcomb->rssi_lna1) {

    conf->main_lna_conf = 131;
    conf->alt_lna_conf = 130;
   } else {

    conf->main_lna_conf = 131;
    conf->alt_lna_conf = 128;
   }
  }
  break;
 default:
  break;
 }
}
