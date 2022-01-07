
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ath5k_eeprom_info {int ee_header; int ee_misc4; } ;


 unsigned int AR5K_EEPROM_CAL_DATA_START (int ) ;
 int AR5K_EEPROM_HDR_11A (int ) ;
 int AR5K_EEPROM_HDR_11B (int ) ;



 int AR5K_EEPROM_N_2GHZ_CHAN_2413 ;
 int AR5K_EEPROM_N_5GHZ_CHAN ;
 int ath5k_pdgains_size_2413 (struct ath5k_eeprom_info*,int) ;

__attribute__((used)) static unsigned int
ath5k_cal_data_offset_2413(struct ath5k_eeprom_info *ee, int mode)
{
 u32 offset = AR5K_EEPROM_CAL_DATA_START(ee->ee_misc4);

 switch (mode) {
 case 128:
  if (AR5K_EEPROM_HDR_11B(ee->ee_header))
   offset += ath5k_pdgains_size_2413(ee,
     129) +
     AR5K_EEPROM_N_2GHZ_CHAN_2413 / 2;

 case 129:
  if (AR5K_EEPROM_HDR_11A(ee->ee_header))
   offset += ath5k_pdgains_size_2413(ee,
     130) +
     AR5K_EEPROM_N_5GHZ_CHAN / 2;

 case 130:
  break;
 default:
  break;
 }

 return offset;
}
