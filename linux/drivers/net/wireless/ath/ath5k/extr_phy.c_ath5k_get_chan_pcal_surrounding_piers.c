
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct ieee80211_channel {scalar_t__ center_freq; int hw_value; } ;
struct ath5k_eeprom_info {size_t* ee_n_piers; struct ath5k_chan_pcal_info* ee_pwr_cal_g; struct ath5k_chan_pcal_info* ee_pwr_cal_b; struct ath5k_chan_pcal_info* ee_pwr_cal_a; } ;
struct TYPE_2__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {TYPE_1__ ah_capabilities; } ;
struct ath5k_chan_pcal_info {scalar_t__ freq; } ;






__attribute__((used)) static void
ath5k_get_chan_pcal_surrounding_piers(struct ath5k_hw *ah,
   struct ieee80211_channel *channel,
   struct ath5k_chan_pcal_info **pcinfo_l,
   struct ath5k_chan_pcal_info **pcinfo_r)
{
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 struct ath5k_chan_pcal_info *pcinfo;
 u8 idx_l, idx_r;
 u8 mode, max, i;
 u32 target = channel->center_freq;

 idx_l = 0;
 idx_r = 0;

 switch (channel->hw_value) {
 case 130:
  pcinfo = ee->ee_pwr_cal_a;
  mode = 130;
  break;
 case 129:
  pcinfo = ee->ee_pwr_cal_b;
  mode = 129;
  break;
 case 128:
 default:
  pcinfo = ee->ee_pwr_cal_g;
  mode = 128;
  break;
 }
 max = ee->ee_n_piers[mode] - 1;




 if (target < pcinfo[0].freq) {
  idx_l = idx_r = 0;
  goto done;
 }




 if (target > pcinfo[max].freq) {
  idx_l = idx_r = max;
  goto done;
 }





 for (i = 0; i <= max; i++) {




  if (pcinfo[i].freq == target) {
   idx_l = idx_r = i;
   goto done;
  }




  if (target < pcinfo[i].freq) {
   idx_r = i;
   idx_l = idx_r - 1;
   goto done;
  }
 }

done:
 *pcinfo_l = &pcinfo[idx_l];
 *pcinfo_r = &pcinfo[idx_r];
}
