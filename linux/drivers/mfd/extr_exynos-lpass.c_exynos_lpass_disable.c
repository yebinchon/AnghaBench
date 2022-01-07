
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_lpass {int sfr0_clk; int top; } ;


 int SFR_LPASS_INTR_CA5_MASK ;
 int SFR_LPASS_INTR_CPU_MASK ;
 int clk_disable_unprepare (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void exynos_lpass_disable(struct exynos_lpass *lpass)
{

 regmap_write(lpass->top, SFR_LPASS_INTR_CPU_MASK, 0);
 regmap_write(lpass->top, SFR_LPASS_INTR_CA5_MASK, 0);

 clk_disable_unprepare(lpass->sfr0_clk);
}
