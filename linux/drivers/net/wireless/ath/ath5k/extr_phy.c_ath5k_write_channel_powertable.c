
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ath5k_hw {int dummy; } ;


 scalar_t__ AR5K_PWRTABLE_PWR_TO_PDADC ;
 int ath5k_write_pcdac_table (struct ath5k_hw*) ;
 int ath5k_write_pwr_to_pdadc_table (struct ath5k_hw*,scalar_t__) ;

__attribute__((used)) static void
ath5k_write_channel_powertable(struct ath5k_hw *ah, u8 ee_mode, u8 type)
{
 if (type == AR5K_PWRTABLE_PWR_TO_PDADC)
  ath5k_write_pwr_to_pdadc_table(ah, ee_mode);
 else
  ath5k_write_pcdac_table(ah);
}
