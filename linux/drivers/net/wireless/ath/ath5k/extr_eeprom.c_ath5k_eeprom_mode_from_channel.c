
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int hw_value; } ;
struct ath5k_hw {int dummy; } ;


 int AR5K_EEPROM_MODE_11A ;
 int AR5K_EEPROM_MODE_11B ;
 int AR5K_EEPROM_MODE_11G ;



 int ATH5K_WARN (struct ath5k_hw*,char*) ;

int
ath5k_eeprom_mode_from_channel(struct ath5k_hw *ah,
  struct ieee80211_channel *channel)
{
 switch (channel->hw_value) {
 case 130:
  return AR5K_EEPROM_MODE_11A;
 case 128:
  return AR5K_EEPROM_MODE_11G;
 case 129:
  return AR5K_EEPROM_MODE_11B;
 default:
  ATH5K_WARN(ah, "channel is not A/B/G!");
  return AR5K_EEPROM_MODE_11A;
 }
}
