
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_devdata {scalar_t__ regs; } ;


 scalar_t__ SM501_CURRENT_CLOCK ;
 unsigned long SM501_POWERMODE_M1_SRC ;
 unsigned long SM501_POWERMODE_M_SRC ;
 unsigned long smc501_readl (scalar_t__) ;

__attribute__((used)) static int sm501_check_clocks(struct sm501_devdata *sm)
{
 unsigned long pwrmode = smc501_readl(sm->regs + SM501_CURRENT_CLOCK);
 unsigned long msrc = (pwrmode & SM501_POWERMODE_M_SRC);
 unsigned long m1src = (pwrmode & SM501_POWERMODE_M1_SRC);

 return ((msrc == 0 && m1src != 0) || (msrc != 0 && m1src == 0));
}
