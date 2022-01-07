
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw_antcomb_conf {scalar_t__ main_lna_conf; scalar_t__ alt_lna_conf; } ;
struct ath_ant_comb {scalar_t__ rssi_second; scalar_t__ rssi_third; scalar_t__ first_quick_scan_conf; scalar_t__ second_quick_scan_conf; scalar_t__ main_conf; scalar_t__ second_ratio; scalar_t__ first_ratio; } ;


 scalar_t__ ATH_ANT_DIV_COMB_LNA1 ;
 scalar_t__ ATH_ANT_DIV_COMB_LNA2 ;

__attribute__((used)) static void ath_ant_set_alt_ratio(struct ath_ant_comb *antcomb,
      struct ath_hw_antcomb_conf *conf)
{

 if (antcomb->first_ratio && antcomb->second_ratio) {
  if (antcomb->rssi_second > antcomb->rssi_third) {

   if ((antcomb->first_quick_scan_conf == ATH_ANT_DIV_COMB_LNA1) ||
       (antcomb->first_quick_scan_conf == ATH_ANT_DIV_COMB_LNA2))

    if (conf->main_lna_conf == ATH_ANT_DIV_COMB_LNA2)
     conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA1;
    else
     conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA2;
   else

    conf->alt_lna_conf =
     antcomb->first_quick_scan_conf;
  } else if ((antcomb->second_quick_scan_conf == ATH_ANT_DIV_COMB_LNA1) ||
      (antcomb->second_quick_scan_conf == ATH_ANT_DIV_COMB_LNA2)) {

   if (conf->main_lna_conf == ATH_ANT_DIV_COMB_LNA2)
    conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA1;
   else
    conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA2;
  } else {

   conf->alt_lna_conf = antcomb->second_quick_scan_conf;
  }
 } else if (antcomb->first_ratio) {

  if ((antcomb->first_quick_scan_conf == ATH_ANT_DIV_COMB_LNA1) ||
      (antcomb->first_quick_scan_conf == ATH_ANT_DIV_COMB_LNA2))

   if (conf->main_lna_conf == ATH_ANT_DIV_COMB_LNA2)
    conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA1;
   else
    conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA2;
  else

   conf->alt_lna_conf = antcomb->first_quick_scan_conf;
 } else if (antcomb->second_ratio) {

  if ((antcomb->second_quick_scan_conf == ATH_ANT_DIV_COMB_LNA1) ||
      (antcomb->second_quick_scan_conf == ATH_ANT_DIV_COMB_LNA2))

   if (conf->main_lna_conf == ATH_ANT_DIV_COMB_LNA2)
    conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA1;
   else
    conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA2;
  else

   conf->alt_lna_conf = antcomb->second_quick_scan_conf;
 } else {

  if ((antcomb->main_conf == ATH_ANT_DIV_COMB_LNA1) ||
      (antcomb->main_conf == ATH_ANT_DIV_COMB_LNA2))

   if (conf->main_lna_conf == ATH_ANT_DIV_COMB_LNA2)
    conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA1;
   else
    conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA2;
  else

   conf->alt_lna_conf = antcomb->main_conf;
 }
}
