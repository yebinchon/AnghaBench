
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int REG_READ (struct ath_hw*,int ) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static bool is_pmu_set(struct ath_hw *ah, u32 pmu_reg, int pmu_set)
{
 int timeout = 100;

 while (pmu_set != REG_READ(ah, pmu_reg)) {
  if (timeout-- == 0)
   return 0;
  REG_WRITE(ah, pmu_reg, pmu_set);
  udelay(10);
 }

 return 1;
}
