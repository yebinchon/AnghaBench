
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int PLL3 ;
 int PLL3_DO_MEAS_MASK ;
 int PLL4 ;
 int PLL4_MEAS_DONE ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_READ (struct ath_hw*,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int SQSUM_DVC_MASK ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_err (struct ath_common*,char*) ;
 int udelay (int) ;

u32 ar9003_get_pll_sqsum_dvc(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int i = 0;

 REG_CLR_BIT(ah, PLL3, PLL3_DO_MEAS_MASK);
 udelay(100);
 REG_SET_BIT(ah, PLL3, PLL3_DO_MEAS_MASK);

 while ((REG_READ(ah, PLL4) & PLL4_MEAS_DONE) == 0) {

  udelay(100);

  if (WARN_ON_ONCE(i >= 100)) {
   ath_err(common, "PLL4 measurement not done\n");
   break;
  }

  i++;
 }

 return (REG_READ(ah, PLL3) & SQSUM_DVC_MASK) >> 3;
}
