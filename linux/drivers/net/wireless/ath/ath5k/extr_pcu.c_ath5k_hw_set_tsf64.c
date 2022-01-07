
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ath5k_hw {int dummy; } ;


 int AR5K_TSF_L32 ;
 int AR5K_TSF_U32 ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;

void
ath5k_hw_set_tsf64(struct ath5k_hw *ah, u64 tsf64)
{
 ath5k_hw_reg_write(ah, tsf64 & 0xffffffff, AR5K_TSF_L32);
 ath5k_hw_reg_write(ah, (tsf64 >> 32) & 0xffffffff, AR5K_TSF_U32);
}
