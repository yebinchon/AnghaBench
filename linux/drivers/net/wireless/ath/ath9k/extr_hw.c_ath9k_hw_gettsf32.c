
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_TSF_L32 ;
 int REG_READ (struct ath_hw*,int ) ;

u32 ath9k_hw_gettsf32(struct ath_hw *ah)
{
 return REG_READ(ah, AR_TSF_L32);
}
