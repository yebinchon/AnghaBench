
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_lpass {int top; } ;


 int SFR_LPASS_CORE_SW_RESET ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void exynos_lpass_core_sw_reset(struct exynos_lpass *lpass, int mask)
{
 unsigned int val = 0;

 regmap_read(lpass->top, SFR_LPASS_CORE_SW_RESET, &val);

 val &= ~mask;
 regmap_write(lpass->top, SFR_LPASS_CORE_SW_RESET, val);

 usleep_range(100, 150);

 val |= mask;
 regmap_write(lpass->top, SFR_LPASS_CORE_SW_RESET, val);
}
