
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct maxim_charger_current {unsigned int max; unsigned int min; unsigned int high_start; unsigned int high_step; } ;


 unsigned int CHGCTRL4_MBCICHWRCH_SHIFT ;
 int CHGCTRL4_MBCICHWRCL_SHIFT ;
 int EINVAL ;
 unsigned int min (unsigned int,unsigned int) ;

int maxim_charger_calc_reg_current(const struct maxim_charger_current *limits,
  unsigned int min_ua, unsigned int max_ua, u8 *dst)
{
 unsigned int current_bits = 0xf;

 if (min_ua > max_ua)
  return -EINVAL;

 if (min_ua > limits->max || max_ua < limits->min)
  return -EINVAL;

 if (max_ua < limits->high_start) {




  *dst = 0x0;
  return 0;
 }


 max_ua = min(limits->max, max_ua);
 max_ua -= limits->high_start;





 current_bits = max_ua / limits->high_step;


 *dst = 0x1 << CHGCTRL4_MBCICHWRCL_SHIFT;

 *dst |= current_bits << CHGCTRL4_MBCICHWRCH_SHIFT;

 return 0;
}
