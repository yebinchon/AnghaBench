
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct macb {int pclk; } ;


 int CLK ;
 int MACB_BF (int ,int ) ;
 int MACB_CLK_DIV16 ;
 int MACB_CLK_DIV32 ;
 int MACB_CLK_DIV64 ;
 int MACB_CLK_DIV8 ;
 unsigned long clk_get_rate (int ) ;
 int gem_mdc_clk_div (struct macb*) ;
 scalar_t__ macb_is_gem (struct macb*) ;

__attribute__((used)) static u32 macb_mdc_clk_div(struct macb *bp)
{
 u32 config;
 unsigned long pclk_hz;

 if (macb_is_gem(bp))
  return gem_mdc_clk_div(bp);

 pclk_hz = clk_get_rate(bp->pclk);
 if (pclk_hz <= 20000000)
  config = MACB_BF(CLK, MACB_CLK_DIV8);
 else if (pclk_hz <= 40000000)
  config = MACB_BF(CLK, MACB_CLK_DIV16);
 else if (pclk_hz <= 80000000)
  config = MACB_BF(CLK, MACB_CLK_DIV32);
 else
  config = MACB_BF(CLK, MACB_CLK_DIV64);

 return config;
}
