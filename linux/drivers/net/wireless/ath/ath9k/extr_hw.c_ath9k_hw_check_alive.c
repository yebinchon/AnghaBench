
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_CFG ;
 int AR_OBS_BUS_1 ;
 scalar_t__ AR_SREV_9285_12_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9300 (struct ath_hw*) ;
 int REG_READ (struct ath_hw*,int ) ;
 int ath9k_hw_detect_mac_hang (struct ath_hw*) ;
 int udelay (int) ;

bool ath9k_hw_check_alive(struct ath_hw *ah)
{
 int count = 50;
 u32 reg, last_val;


 if (REG_READ(ah, AR_CFG) == 0xdeadbeef)
  return 0;

 if (AR_SREV_9300(ah))
  return !ath9k_hw_detect_mac_hang(ah);

 if (AR_SREV_9285_12_OR_LATER(ah))
  return 1;

 last_val = REG_READ(ah, AR_OBS_BUS_1);
 do {
  reg = REG_READ(ah, AR_OBS_BUS_1);
  if (reg != last_val)
   return 1;

  udelay(1);
  last_val = reg;
  if ((reg & 0x7E7FFFEF) == 0x00702400)
   continue;

  switch (reg & 0x7E000B00) {
  case 0x1E000000:
  case 0x52000B00:
  case 0x18000B00:
   continue;
  default:
   return 1;
  }
 } while (count-- > 0);

 return 0;
}
