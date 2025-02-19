
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SDHCI_SPRD_CLK_MAX_DIV ;

__attribute__((used)) static inline u32 sdhci_sprd_calc_div(u32 base_clk, u32 clk)
{
 u32 div;


 if (base_clk <= clk * 2)
  return 0;

 div = (u32) (base_clk / (clk * 2));

 if ((base_clk / div) > (clk * 2))
  div++;

 if (div > SDHCI_SPRD_CLK_MAX_DIV)
  div = SDHCI_SPRD_CLK_MAX_DIV;

 if (div % 2)
  div = (div + 1) / 2;
 else
  div = div / 2;

 return div;
}
