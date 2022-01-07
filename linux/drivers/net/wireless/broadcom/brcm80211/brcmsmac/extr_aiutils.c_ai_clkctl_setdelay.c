
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct si_pub {int dummy; } ;
struct bcma_device {int dummy; } ;


 int CHIPCREGOFFS (scalar_t__) ;
 scalar_t__ FREF_DELAY ;
 scalar_t__ PLL_DELAY ;
 scalar_t__ SCC_SS_XTAL ;
 scalar_t__ XTAL_ON_DELAY ;
 scalar_t__ ai_slowclk_freq (struct si_pub*,int,struct bcma_device*) ;
 scalar_t__ ai_slowclk_src (struct si_pub*,struct bcma_device*) ;
 int bcma_write32 (struct bcma_device*,int ,scalar_t__) ;

__attribute__((used)) static void
ai_clkctl_setdelay(struct si_pub *sih, struct bcma_device *cc)
{
 uint slowmaxfreq, pll_delay, slowclk;
 uint pll_on_delay, fref_sel_delay;

 pll_delay = PLL_DELAY;







 slowclk = ai_slowclk_src(sih, cc);
 if (slowclk != SCC_SS_XTAL)
  pll_delay += XTAL_ON_DELAY;


 slowmaxfreq =
     ai_slowclk_freq(sih, 0, cc);

 pll_on_delay = ((slowmaxfreq * pll_delay) + 999999) / 1000000;
 fref_sel_delay = ((slowmaxfreq * FREF_DELAY) + 999999) / 1000000;

 bcma_write32(cc, CHIPCREGOFFS(pll_on_delay), pll_on_delay);
 bcma_write32(cc, CHIPCREGOFFS(fref_sel_delay), fref_sel_delay);
}
