
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int bb_watchdog_last_status; } ;


 int AR9300_DFS_FIRPWR ;
 int AR_PHY_RADAR_0 ;
 int AR_PHY_RADAR_0_FIRPWR ;
 int AR_SREV_9340 (struct ath_hw*) ;
 int AR_SREV_9531 (struct ath_hw*) ;
 int AR_SREV_9561 (struct ath_hw*) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;
 int SM (int,int ) ;
 int udelay (int) ;

bool ar9003_hw_bb_watchdog_check(struct ath_hw *ah)
{
 u32 val;

 switch(ah->bb_watchdog_last_status) {
 case 0x04000539:
  val = REG_READ(ah, AR_PHY_RADAR_0);
  val &= (~AR_PHY_RADAR_0_FIRPWR);
  val |= SM(0x7f, AR_PHY_RADAR_0_FIRPWR);
  REG_WRITE(ah, AR_PHY_RADAR_0, val);
  udelay(1);
  val = REG_READ(ah, AR_PHY_RADAR_0);
  val &= ~AR_PHY_RADAR_0_FIRPWR;
  val |= SM(AR9300_DFS_FIRPWR, AR_PHY_RADAR_0_FIRPWR);
  REG_WRITE(ah, AR_PHY_RADAR_0, val);

  return 0;
 case 0x1300000a:
  return 0;
 case 0x0400000a:
 case 0x04000b09:
  return 1;
 case 0x04000409:
  if (AR_SREV_9340(ah) || AR_SREV_9531(ah) || AR_SREV_9561(ah))
   return 0;
  else
   return 1;
 default:




  return 1;
 }
}
