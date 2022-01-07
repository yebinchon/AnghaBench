
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ analog_shiftreg; } ;
struct ath_hw {TYPE_1__ config; } ;


 int REG_RMW (struct ath_hw*,int,int,int) ;
 int udelay (int) ;

void ath9k_hw_analog_shift_rmw(struct ath_hw *ah, u32 reg, u32 mask,
          u32 shift, u32 val)
{
 REG_RMW(ah, reg, ((val << shift) & mask), mask);

 if (ah->config.analog_shiftreg)
  udelay(100);
}
