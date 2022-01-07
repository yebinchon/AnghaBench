
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ov5640_dev {int dummy; } ;


 scalar_t__ OV5640_PLL_MULT_MAX ;
 scalar_t__ OV5640_PLL_MULT_MIN ;
 scalar_t__ OV5640_PLL_PREDIV ;
 scalar_t__ OV5640_SYSDIV_MAX ;
 scalar_t__ OV5640_SYSDIV_MIN ;
 scalar_t__ abs (unsigned long) ;
 unsigned long ov5640_compute_sys_clk (struct ov5640_dev*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static unsigned long ov5640_calc_sys_clk(struct ov5640_dev *sensor,
      unsigned long rate,
      u8 *pll_prediv, u8 *pll_mult,
      u8 *sysdiv)
{
 unsigned long best = ~0;
 u8 best_sysdiv = 1, best_mult = 1;
 u8 _sysdiv, _pll_mult;

 for (_sysdiv = OV5640_SYSDIV_MIN;
      _sysdiv <= OV5640_SYSDIV_MAX;
      _sysdiv++) {
  for (_pll_mult = OV5640_PLL_MULT_MIN;
       _pll_mult <= OV5640_PLL_MULT_MAX;
       _pll_mult++) {
   unsigned long _rate;





   if (_pll_mult > 127 && (_pll_mult % 2))
    continue;

   _rate = ov5640_compute_sys_clk(sensor,
             OV5640_PLL_PREDIV,
             _pll_mult, _sysdiv);





   if (!rate)
    break;





   if (_rate < rate)
    continue;

   if (abs(rate - _rate) < abs(rate - best)) {
    best = _rate;
    best_sysdiv = _sysdiv;
    best_mult = _pll_mult;
   }

   if (_rate == rate)
    goto out;
  }
 }

out:
 *sysdiv = best_sysdiv;
 *pll_prediv = OV5640_PLL_PREDIV;
 *pll_mult = best_mult;

 return best;
}
