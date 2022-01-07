
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_regulatory {scalar_t__ country_code; int region; TYPE_1__* regpair; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_2__ {int reg_5ghz_ctl; int reg_2ghz_ctl; } ;


 int CTL_ETSI ;
 int CTL_FCC ;
 int CTL_MKK ;
 scalar_t__ CTRY_DEFAULT ;





 int NO_CTL ;
 int SD_NO_CTL ;
 scalar_t__ ath_regd_get_eepromRD (struct ath_regulatory*) ;
 scalar_t__ is_wwr_sku (scalar_t__) ;

u32 ath_regd_get_band_ctl(struct ath_regulatory *reg,
     enum nl80211_band band)
{
 if (!reg->regpair ||
     (reg->country_code == CTRY_DEFAULT &&
      is_wwr_sku(ath_regd_get_eepromRD(reg)))) {
  return SD_NO_CTL;
 }

 if (ath_regd_get_eepromRD(reg) == CTRY_DEFAULT) {
  switch (reg->region) {
  case 129:
   return CTL_FCC;
  case 130:
   return CTL_ETSI;
  case 128:
   return CTL_MKK;
  default:
   break;
  }
 }

 switch (band) {
 case 132:
  return reg->regpair->reg_2ghz_ctl;
 case 131:
  return reg->regpair->reg_5ghz_ctl;
 default:
  return NO_CTL;
 }
}
