
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PRCM_TCR ;
 int PRCM_TCR_DOZE_MODE ;
 int PRCM_TCR_STOP_TIMERS ;
 int PRCM_TCR_TENSEL_MASK ;
 int writel (int,int ) ;

__attribute__((used)) static int request_timclk(bool enable)
{
 u32 val = (PRCM_TCR_DOZE_MODE | PRCM_TCR_TENSEL_MASK);

 if (!enable)
  val |= PRCM_TCR_STOP_TIMERS;
 writel(val, PRCM_TCR);

 return 0;
}
