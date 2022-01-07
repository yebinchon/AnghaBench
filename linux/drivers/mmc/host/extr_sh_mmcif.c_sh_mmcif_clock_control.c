
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mmcif_plat_data {int sup_pclk; } ;
struct sh_mmcif_host {int clkdiv_map; int clk; } ;
struct device {struct sh_mmcif_plat_data* platform_data; } ;


 unsigned int CLK_CLEAR ;
 unsigned int CLK_ENABLE ;
 unsigned int CLK_SUP_PCLK ;
 scalar_t__ DIV_ROUND_UP (unsigned int,unsigned int) ;
 int MMCIF_CE_CLK_CTRL ;
 unsigned int clk_get_rate (int ) ;
 unsigned int clk_round_rate (int ,unsigned int) ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_dbg (struct device*,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int fls (scalar_t__) ;
 int sh_mmcif_bitclr (struct sh_mmcif_host*,int ,unsigned int) ;
 int sh_mmcif_bitset (struct sh_mmcif_host*,int ,unsigned int) ;
 struct device* sh_mmcif_host_to_dev (struct sh_mmcif_host*) ;

__attribute__((used)) static void sh_mmcif_clock_control(struct sh_mmcif_host *host, unsigned int clk)
{
 struct device *dev = sh_mmcif_host_to_dev(host);
 struct sh_mmcif_plat_data *p = dev->platform_data;
 bool sup_pclk = p ? p->sup_pclk : 0;
 unsigned int current_clk = clk_get_rate(host->clk);
 unsigned int clkdiv;

 sh_mmcif_bitclr(host, MMCIF_CE_CLK_CTRL, CLK_ENABLE);
 sh_mmcif_bitclr(host, MMCIF_CE_CLK_CTRL, CLK_CLEAR);

 if (!clk)
  return;

 if (host->clkdiv_map) {
  unsigned int freq, best_freq, myclk, div, diff_min, diff;
  int i;

  clkdiv = 0;
  diff_min = ~0;
  best_freq = 0;
  for (i = 31; i >= 0; i--) {
   if (!((1 << i) & host->clkdiv_map))
    continue;






   div = 1 << (i + 1);
   freq = clk_round_rate(host->clk, clk * div);
   myclk = freq / div;
   diff = (myclk > clk) ? myclk - clk : clk - myclk;

   if (diff <= diff_min) {
    best_freq = freq;
    clkdiv = i;
    diff_min = diff;
   }
  }

  dev_dbg(dev, "clk %u/%u (%u, 0x%x)\n",
   (best_freq / (1 << (clkdiv + 1))), clk,
   best_freq, clkdiv);

  clk_set_rate(host->clk, best_freq);
  clkdiv = clkdiv << 16;
 } else if (sup_pclk && clk == current_clk) {
  clkdiv = CLK_SUP_PCLK;
 } else {
  clkdiv = (fls(DIV_ROUND_UP(current_clk, clk) - 1) - 1) << 16;
 }

 sh_mmcif_bitset(host, MMCIF_CE_CLK_CTRL, CLK_CLEAR & clkdiv);
 sh_mmcif_bitset(host, MMCIF_CE_CLK_CTRL, CLK_ENABLE);
}
