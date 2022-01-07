
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sm501_devdata {int rev; int clock_lock; int dev; scalar_t__ regs; } ;
struct sm501_clock {int shift; int divider; int k; int n; int m; int mclk; } ;
struct device {int dummy; } ;






 scalar_t__ SM501_CURRENT_CLOCK ;
 scalar_t__ SM501_CURRENT_GATE ;
 scalar_t__ SM501_POWER_MODE_0_CLOCK ;
 scalar_t__ SM501_POWER_MODE_0_GATE ;
 scalar_t__ SM501_POWER_MODE_1_CLOCK ;
 scalar_t__ SM501_POWER_MODE_1_GATE ;
 scalar_t__ SM501_POWER_MODE_CONTROL ;
 scalar_t__ SM501_PROGRAMMABLE_PLL_CONTROL ;
 int dev_dbg (int ,char*,unsigned long,unsigned long,unsigned long) ;
 struct sm501_devdata* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sm501_calc_pll (int,struct sm501_clock*,int) ;
 int sm501_dump_clk (struct sm501_devdata*) ;
 int sm501_mdelay (struct sm501_devdata*,int) ;
 int sm501_select_clock (unsigned long,struct sm501_clock*,int) ;
 int sm501_sync_regs (struct sm501_devdata*) ;
 unsigned long smc501_readl (scalar_t__) ;
 int smc501_writel (unsigned int,scalar_t__) ;

unsigned long sm501_set_clock(struct device *dev,
         int clksrc,
         unsigned long req_freq)
{
 struct sm501_devdata *sm = dev_get_drvdata(dev);
 unsigned long mode = smc501_readl(sm->regs + SM501_POWER_MODE_CONTROL);
 unsigned long gate = smc501_readl(sm->regs + SM501_CURRENT_GATE);
 unsigned long clock = smc501_readl(sm->regs + SM501_CURRENT_CLOCK);
 unsigned int pll_reg = 0;
 unsigned long sm501_freq;
 u64 reg;

 struct sm501_clock to;





 switch (clksrc) {
 case 129:




  if (sm->rev >= 0xC0) {

   sm501_freq = (sm501_calc_pll(2 * req_freq,
           &to, 5) / 2);
   reg = to.shift & 0x07;
   if (to.divider == 3)
    reg |= 0x08;
   else if (to.divider == 5)
    reg |= 0x10;
   reg |= 0x40;
   pll_reg = 0x20000 | (to.k << 15) | (to.n << 8) | to.m;
  } else {
   sm501_freq = (sm501_select_clock(2 * req_freq,
        &to, 5) / 2);
   reg = to.shift & 0x07;
   if (to.divider == 3)
    reg |= 0x08;
   else if (to.divider == 5)
    reg |= 0x10;
   if (to.mclk != 288000000)
    reg |= 0x20;
  }
  break;

 case 128:



  sm501_freq = (sm501_select_clock(2 * req_freq, &to, 3) / 2);
  reg=to.shift & 0x07;
  if (to.divider == 3)
   reg |= 0x08;
  if (to.mclk != 288000000)
   reg |= 0x10;
  break;

 case 130:
 case 131:


  sm501_freq = sm501_select_clock( req_freq, &to, 3);
  reg=to.shift & 0x07;
  if (to.divider == 3)
   reg |= 0x08;
  if (to.mclk != 288000000)
   reg |= 0x10;
  break;

 default:
  return 0;
 }

 mutex_lock(&sm->clock_lock);

 mode = smc501_readl(sm->regs + SM501_POWER_MODE_CONTROL);
 gate = smc501_readl(sm->regs + SM501_CURRENT_GATE);
 clock = smc501_readl(sm->regs + SM501_CURRENT_CLOCK);

 clock = clock & ~(0xFF << clksrc);
 clock |= reg<<clksrc;

 mode &= 3;

 switch (mode) {
 case 1:
  smc501_writel(gate, sm->regs + SM501_POWER_MODE_0_GATE);
  smc501_writel(clock, sm->regs + SM501_POWER_MODE_0_CLOCK);
  mode = 0;
  break;
 case 2:
 case 0:
  smc501_writel(gate, sm->regs + SM501_POWER_MODE_1_GATE);
  smc501_writel(clock, sm->regs + SM501_POWER_MODE_1_CLOCK);
  mode = 1;
  break;

 default:
  mutex_unlock(&sm->clock_lock);
  return -1;
 }

 smc501_writel(mode, sm->regs + SM501_POWER_MODE_CONTROL);

 if (pll_reg)
  smc501_writel(pll_reg,
    sm->regs + SM501_PROGRAMMABLE_PLL_CONTROL);

 sm501_sync_regs(sm);

 dev_dbg(sm->dev, "gate %08lx, clock %08lx, mode %08lx\n",
  gate, clock, mode);

 sm501_mdelay(sm, 16);
 mutex_unlock(&sm->clock_lock);

 sm501_dump_clk(sm);

 return sm501_freq;
}
