
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath5k_eeprom_info {scalar_t__ ee_is_hb63; int ee_misc1; } ;
struct TYPE_2__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {scalar_t__ ah_radio; int ah_mac_version; TYPE_1__ ah_capabilities; } ;


 scalar_t__ AR5K_EEPROM_HAS32KHZCRYSTAL (int ) ;
 scalar_t__ AR5K_EEPROM_HAS32KHZCRYSTAL_OLD (int ) ;
 int AR5K_PCICFG ;
 int AR5K_PCICFG_SLEEP_CLOCK_EN ;
 int AR5K_PCICFG_SLEEP_CLOCK_RATE ;
 int AR5K_PHY_SCAL ;
 int AR5K_PHY_SCAL_32MHZ ;
 int AR5K_PHY_SCAL_32MHZ_2417 ;
 int AR5K_PHY_SCAL_32MHZ_HB63 ;
 int AR5K_PHY_SCLOCK ;
 int AR5K_PHY_SCLOCK_32MHZ ;
 int AR5K_PHY_SCR ;
 int AR5K_PHY_SDELAY ;
 int AR5K_PHY_SDELAY_32MHZ ;
 int AR5K_PHY_SLMT ;
 int AR5K_PHY_SLMT_32MHZ ;
 int AR5K_PHY_SPENDING ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int) ;
 scalar_t__ AR5K_RF2316 ;
 scalar_t__ AR5K_RF2317 ;
 scalar_t__ AR5K_RF5112 ;
 scalar_t__ AR5K_RF5413 ;
 int AR5K_SREV_AR2417 ;
 int AR5K_TSF_PARM ;
 int AR5K_TSF_PARM_INC ;
 int AR5K_USEC_32 ;
 int AR5K_USEC_5211 ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

__attribute__((used)) static void
ath5k_hw_set_sleep_clock(struct ath5k_hw *ah, bool enable)
{
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 u32 scal, spending, sclock;



 if ((AR5K_EEPROM_HAS32KHZCRYSTAL(ee->ee_misc1) ||
 AR5K_EEPROM_HAS32KHZCRYSTAL_OLD(ee->ee_misc1)) &&
 enable) {


  AR5K_REG_WRITE_BITS(ah, AR5K_USEC_5211, AR5K_USEC_32, 1);

  AR5K_REG_WRITE_BITS(ah, AR5K_TSF_PARM, AR5K_TSF_PARM_INC, 61);



  ath5k_hw_reg_write(ah, 0x1f, AR5K_PHY_SCR);

  if ((ah->ah_radio == AR5K_RF5112) ||
  (ah->ah_radio == AR5K_RF5413) ||
  (ah->ah_radio == AR5K_RF2316) ||
  (ah->ah_mac_version == (AR5K_SREV_AR2417 >> 4)))
   spending = 0x14;
  else
   spending = 0x18;
  ath5k_hw_reg_write(ah, spending, AR5K_PHY_SPENDING);

  if ((ah->ah_radio == AR5K_RF5112) ||
  (ah->ah_radio == AR5K_RF5413) ||
  (ah->ah_mac_version == (AR5K_SREV_AR2417 >> 4))) {
   ath5k_hw_reg_write(ah, 0x26, AR5K_PHY_SLMT);
   ath5k_hw_reg_write(ah, 0x0d, AR5K_PHY_SCAL);
   ath5k_hw_reg_write(ah, 0x07, AR5K_PHY_SCLOCK);
   ath5k_hw_reg_write(ah, 0x3f, AR5K_PHY_SDELAY);
   AR5K_REG_WRITE_BITS(ah, AR5K_PCICFG,
    AR5K_PCICFG_SLEEP_CLOCK_RATE, 0x02);
  } else {
   ath5k_hw_reg_write(ah, 0x0a, AR5K_PHY_SLMT);
   ath5k_hw_reg_write(ah, 0x0c, AR5K_PHY_SCAL);
   ath5k_hw_reg_write(ah, 0x03, AR5K_PHY_SCLOCK);
   ath5k_hw_reg_write(ah, 0x20, AR5K_PHY_SDELAY);
   AR5K_REG_WRITE_BITS(ah, AR5K_PCICFG,
    AR5K_PCICFG_SLEEP_CLOCK_RATE, 0x03);
  }


  AR5K_REG_ENABLE_BITS(ah, AR5K_PCICFG,
    AR5K_PCICFG_SLEEP_CLOCK_EN);

 } else {



  AR5K_REG_DISABLE_BITS(ah, AR5K_PCICFG,
    AR5K_PCICFG_SLEEP_CLOCK_EN);

  AR5K_REG_WRITE_BITS(ah, AR5K_PCICFG,
    AR5K_PCICFG_SLEEP_CLOCK_RATE, 0);


  ath5k_hw_reg_write(ah, 0x1f, AR5K_PHY_SCR);
  ath5k_hw_reg_write(ah, AR5K_PHY_SLMT_32MHZ, AR5K_PHY_SLMT);

  if (ah->ah_mac_version == (AR5K_SREV_AR2417 >> 4))
   scal = AR5K_PHY_SCAL_32MHZ_2417;
  else if (ee->ee_is_hb63)
   scal = AR5K_PHY_SCAL_32MHZ_HB63;
  else
   scal = AR5K_PHY_SCAL_32MHZ;
  ath5k_hw_reg_write(ah, scal, AR5K_PHY_SCAL);

  ath5k_hw_reg_write(ah, AR5K_PHY_SCLOCK_32MHZ, AR5K_PHY_SCLOCK);
  ath5k_hw_reg_write(ah, AR5K_PHY_SDELAY_32MHZ, AR5K_PHY_SDELAY);

  if ((ah->ah_radio == AR5K_RF5112) ||
  (ah->ah_radio == AR5K_RF5413) ||
  (ah->ah_radio == AR5K_RF2316) ||
  (ah->ah_mac_version == (AR5K_SREV_AR2417 >> 4)))
   spending = 0x14;
  else
   spending = 0x18;
  ath5k_hw_reg_write(ah, spending, AR5K_PHY_SPENDING);


  AR5K_REG_WRITE_BITS(ah, AR5K_TSF_PARM, AR5K_TSF_PARM_INC, 1);

  if ((ah->ah_radio == AR5K_RF5112) ||
   (ah->ah_radio == AR5K_RF5413) ||
   (ah->ah_radio == AR5K_RF2316) ||
   (ah->ah_radio == AR5K_RF2317))
   sclock = 40 - 1;
  else
   sclock = 32 - 1;
  AR5K_REG_WRITE_BITS(ah, AR5K_USEC_5211, AR5K_USEC_32, sclock);
 }
}
