
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 unsigned long DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 unsigned long ISPTCTRL_CTRL_DIV_BYPASS ;

__attribute__((used)) static u32 isp_xclk_calc_divider(unsigned long *rate, unsigned long parent_rate)
{
 u32 divider;

 if (*rate >= parent_rate) {
  *rate = parent_rate;
  return ISPTCTRL_CTRL_DIV_BYPASS;
 }

 if (*rate == 0)
  *rate = 1;

 divider = DIV_ROUND_CLOSEST(parent_rate, *rate);
 if (divider >= ISPTCTRL_CTRL_DIV_BYPASS)
  divider = ISPTCTRL_CTRL_DIV_BYPASS - 1;

 *rate = parent_rate / divider;
 return divider;
}
