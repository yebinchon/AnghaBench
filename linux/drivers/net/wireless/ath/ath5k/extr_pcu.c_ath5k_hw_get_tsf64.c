
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct ath5k_hw {int dummy; } ;


 int AR5K_TSF_L32 ;
 int AR5K_TSF_U32 ;
 int ATH5K_MAX_TSF_READ ;
 int WARN_ON (int) ;
 scalar_t__ ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

u64
ath5k_hw_get_tsf64(struct ath5k_hw *ah)
{
 u32 tsf_lower, tsf_upper1, tsf_upper2;
 int i;
 unsigned long flags;


 local_irq_save(flags);
 tsf_upper1 = ath5k_hw_reg_read(ah, AR5K_TSF_U32);
 for (i = 0; i < ATH5K_MAX_TSF_READ; i++) {
  tsf_lower = ath5k_hw_reg_read(ah, AR5K_TSF_L32);
  tsf_upper2 = ath5k_hw_reg_read(ah, AR5K_TSF_U32);
  if (tsf_upper2 == tsf_upper1)
   break;
  tsf_upper1 = tsf_upper2;
 }

 local_irq_restore(flags);

 WARN_ON(i == ATH5K_MAX_TSF_READ);

 return ((u64)tsf_upper1 << 32) | tsf_lower;
}
