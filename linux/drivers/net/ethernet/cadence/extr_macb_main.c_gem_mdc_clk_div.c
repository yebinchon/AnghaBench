
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct macb {int pclk; } ;


 int CLK ;
 int GEM_BF (int ,int ) ;
 int GEM_CLK_DIV16 ;
 int GEM_CLK_DIV32 ;
 int GEM_CLK_DIV48 ;
 int GEM_CLK_DIV64 ;
 int GEM_CLK_DIV8 ;
 int GEM_CLK_DIV96 ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static u32 gem_mdc_clk_div(struct macb *bp)
{
 u32 config;
 unsigned long pclk_hz = clk_get_rate(bp->pclk);

 if (pclk_hz <= 20000000)
  config = GEM_BF(CLK, GEM_CLK_DIV8);
 else if (pclk_hz <= 40000000)
  config = GEM_BF(CLK, GEM_CLK_DIV16);
 else if (pclk_hz <= 80000000)
  config = GEM_BF(CLK, GEM_CLK_DIV32);
 else if (pclk_hz <= 120000000)
  config = GEM_BF(CLK, GEM_CLK_DIV48);
 else if (pclk_hz <= 160000000)
  config = GEM_BF(CLK, GEM_CLK_DIV64);
 else
  config = GEM_BF(CLK, GEM_CLK_DIV96);

 return config;
}
