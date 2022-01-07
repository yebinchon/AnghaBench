
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_MCAST_FIL0 ;
 int AR_MCAST_FIL1 ;
 int REG_WRITE (struct ath_hw*,int ,int ) ;

void ath9k_hw_setmcastfilter(struct ath_hw *ah, u32 filter0, u32 filter1)
{
 REG_WRITE(ah, AR_MCAST_FIL0, filter0);
 REG_WRITE(ah, AR_MCAST_FIL1, filter1);
}
