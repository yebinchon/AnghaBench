
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSYS ;
 int pr_err (char*) ;
 scalar_t__ twl4030_irq_base ;

int twl4030_exit_irq(void)
{

 if (twl4030_irq_base) {
  pr_err("twl4030: can't yet clean up IRQs?\n");
  return -ENOSYS;
 }
 return 0;
}
