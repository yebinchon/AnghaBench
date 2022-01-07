
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_lpass {int top; int sfr0_clk; } ;


 int LPASS_DMA_SW_RESET ;
 int LPASS_I2S_SW_RESET ;
 int LPASS_INTR_DMA ;
 int LPASS_INTR_I2S ;
 int LPASS_INTR_SFR ;
 int LPASS_INTR_UART ;
 int LPASS_MEM_SW_RESET ;
 int LPASS_UART_SW_RESET ;
 int SFR_LPASS_INTR_CA5_MASK ;
 int SFR_LPASS_INTR_CPU_MASK ;
 int clk_prepare_enable (int ) ;
 int exynos_lpass_core_sw_reset (struct exynos_lpass*,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void exynos_lpass_enable(struct exynos_lpass *lpass)
{
 clk_prepare_enable(lpass->sfr0_clk);


 regmap_write(lpass->top, SFR_LPASS_INTR_CA5_MASK,
       LPASS_INTR_SFR | LPASS_INTR_DMA | LPASS_INTR_I2S);

 regmap_write(lpass->top, SFR_LPASS_INTR_CPU_MASK,
       LPASS_INTR_SFR | LPASS_INTR_DMA | LPASS_INTR_I2S |
       LPASS_INTR_UART);

 exynos_lpass_core_sw_reset(lpass, LPASS_I2S_SW_RESET);
 exynos_lpass_core_sw_reset(lpass, LPASS_DMA_SW_RESET);
 exynos_lpass_core_sw_reset(lpass, LPASS_MEM_SW_RESET);
 exynos_lpass_core_sw_reset(lpass, LPASS_UART_SW_RESET);
}
