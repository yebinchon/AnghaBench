
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_ini_rfgain {scalar_t__ rfg_register; int * rfg_value; } ;
struct ath5k_hw {int ah_radio; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int AR5K_REG_WAIT (unsigned int) ;







 unsigned int ARRAY_SIZE (struct ath5k_ini_rfgain*) ;
 int EINVAL ;
 int NL80211_BAND_2GHZ ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int ,int ) ;
 struct ath5k_ini_rfgain* rfgain_2316 ;
 struct ath5k_ini_rfgain* rfgain_2413 ;
 struct ath5k_ini_rfgain* rfgain_2425 ;
 struct ath5k_ini_rfgain* rfgain_5111 ;
 struct ath5k_ini_rfgain* rfgain_5112 ;
 struct ath5k_ini_rfgain* rfgain_5413 ;

__attribute__((used)) static int
ath5k_hw_rfgain_init(struct ath5k_hw *ah, enum nl80211_band band)
{
 const struct ath5k_ini_rfgain *ath5k_rfg;
 unsigned int i, size, index;

 switch (ah->ah_radio) {
 case 130:
  ath5k_rfg = rfgain_5111;
  size = ARRAY_SIZE(rfgain_5111);
  break;
 case 129:
  ath5k_rfg = rfgain_5112;
  size = ARRAY_SIZE(rfgain_5112);
  break;
 case 132:
  ath5k_rfg = rfgain_2413;
  size = ARRAY_SIZE(rfgain_2413);
  break;
 case 134:
  ath5k_rfg = rfgain_2316;
  size = ARRAY_SIZE(rfgain_2316);
  break;
 case 128:
  ath5k_rfg = rfgain_5413;
  size = ARRAY_SIZE(rfgain_5413);
  break;
 case 133:
 case 131:
  ath5k_rfg = rfgain_2425;
  size = ARRAY_SIZE(rfgain_2425);
  break;
 default:
  return -EINVAL;
 }

 index = (band == NL80211_BAND_2GHZ) ? 1 : 0;

 for (i = 0; i < size; i++) {
  AR5K_REG_WAIT(i);
  ath5k_hw_reg_write(ah, ath5k_rfg[i].rfg_value[index],
   (u32)ath5k_rfg[i].rfg_register);
 }

 return 0;
}
