
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw_antcomb_conf {int main_lna_conf; int alt_lna_conf; } ;
struct ath_ant_comb {int dummy; } ;


 int ATH_ANT_DIV_COMB_LNA1 ;
 int ATH_ANT_DIV_COMB_LNA2 ;
 scalar_t__ ath_ant_div_comb_alt_check (struct ath_hw_antcomb_conf*,struct ath_ant_comb*,int,int,int) ;

__attribute__((used)) static bool ath_ant_try_switch(struct ath_hw_antcomb_conf *div_ant_conf,
          struct ath_ant_comb *antcomb,
          int alt_ratio, int alt_rssi_avg,
          int main_rssi_avg, int curr_main_set,
          int curr_alt_set)
{
 bool ret = 0;

 if (ath_ant_div_comb_alt_check(div_ant_conf, antcomb, alt_ratio,
           alt_rssi_avg, main_rssi_avg)) {
  if (curr_alt_set == ATH_ANT_DIV_COMB_LNA2) {



   div_ant_conf->main_lna_conf = ATH_ANT_DIV_COMB_LNA2;
   div_ant_conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA1;
  } else if (curr_alt_set == ATH_ANT_DIV_COMB_LNA1) {
   div_ant_conf->main_lna_conf = ATH_ANT_DIV_COMB_LNA1;
   div_ant_conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA2;
  }

  ret = 1;
 } else if ((curr_alt_set != ATH_ANT_DIV_COMB_LNA1) &&
     (curr_alt_set != ATH_ANT_DIV_COMB_LNA2)) {



  if (curr_main_set == ATH_ANT_DIV_COMB_LNA2)
   div_ant_conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA1;
  else if (curr_main_set == ATH_ANT_DIV_COMB_LNA1)
   div_ant_conf->alt_lna_conf = ATH_ANT_DIV_COMB_LNA2;

  ret = 1;
 }

 return ret;
}
