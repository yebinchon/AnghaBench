
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int q_tx_num; } ;
struct TYPE_5__ {int range_5ghz_min; int range_5ghz_max; int range_2ghz_min; int range_2ghz_max; } ;
struct TYPE_4__ {int ee_regdomain; int ee_header; } ;
struct ath5k_capabilities {int cap_has_phyerr_counters; int cap_has_mrr_support; TYPE_3__ cap_queues; int cap_mode; int cap_needs_2GHz_ovr; TYPE_2__ cap_range; TYPE_1__ cap_eeprom; } ;
struct ath5k_hw {scalar_t__ ah_version; int ah_radio_5ghz_revision; scalar_t__ ah_mac_srev; struct ath5k_capabilities ah_capabilities; } ;


 scalar_t__ AR5K_AR5210 ;
 scalar_t__ AR5K_AR5211 ;
 scalar_t__ AR5K_AR5212 ;
 scalar_t__ AR5K_EEPROM_HDR_11A (int ) ;
 scalar_t__ AR5K_EEPROM_HDR_11B (int ) ;
 scalar_t__ AR5K_EEPROM_HDR_11G (int ) ;
 int AR5K_MODE_11A ;
 int AR5K_MODE_11B ;
 int AR5K_MODE_11G ;
 int AR5K_NUM_TX_QUEUES ;
 int AR5K_NUM_TX_QUEUES_NOQCU ;
 scalar_t__ AR5K_SREV_AR5213A ;
 int AR5K_SREV_RAD_2112 ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 scalar_t__ ath_is_49ghz_allowed (int ) ;

int ath5k_hw_set_capabilities(struct ath5k_hw *ah)
{
 struct ath5k_capabilities *caps = &ah->ah_capabilities;
 u16 ee_header;


 ee_header = caps->cap_eeprom.ee_header;

 if (ah->ah_version == AR5K_AR5210) {




  caps->cap_range.range_5ghz_min = 5120;
  caps->cap_range.range_5ghz_max = 5430;
  caps->cap_range.range_2ghz_min = 0;
  caps->cap_range.range_2ghz_max = 0;


  __set_bit(AR5K_MODE_11A, caps->cap_mode);
 } else {
  if (AR5K_EEPROM_HDR_11A(ee_header)) {
   if (ath_is_49ghz_allowed(caps->cap_eeprom.ee_regdomain))
    caps->cap_range.range_5ghz_min = 4920;
   else
    caps->cap_range.range_5ghz_min = 5005;
   caps->cap_range.range_5ghz_max = 6100;


   __set_bit(AR5K_MODE_11A, caps->cap_mode);
  }



  if (AR5K_EEPROM_HDR_11B(ee_header) ||
      (AR5K_EEPROM_HDR_11G(ee_header) &&
       ah->ah_version != AR5K_AR5211)) {

   caps->cap_range.range_2ghz_min = 2412;
   caps->cap_range.range_2ghz_max = 2732;




   if (!caps->cap_needs_2GHz_ovr) {
    if (AR5K_EEPROM_HDR_11B(ee_header))
     __set_bit(AR5K_MODE_11B,
       caps->cap_mode);

    if (AR5K_EEPROM_HDR_11G(ee_header) &&
    ah->ah_version != AR5K_AR5211)
     __set_bit(AR5K_MODE_11G,
       caps->cap_mode);
   }
  }
 }

 if ((ah->ah_radio_5ghz_revision & 0xf0) == AR5K_SREV_RAD_2112)
  __clear_bit(AR5K_MODE_11A, caps->cap_mode);


 if (ah->ah_version == AR5K_AR5210)
  caps->cap_queues.q_tx_num = AR5K_NUM_TX_QUEUES_NOQCU;
 else
  caps->cap_queues.q_tx_num = AR5K_NUM_TX_QUEUES;


 if (ah->ah_mac_srev >= AR5K_SREV_AR5213A)
  caps->cap_has_phyerr_counters = 1;
 else
  caps->cap_has_phyerr_counters = 0;


 if (ah->ah_version == AR5K_AR5212)
  caps->cap_has_mrr_support = 1;
 else
  caps->cap_has_mrr_support = 0;

 return 0;
}
