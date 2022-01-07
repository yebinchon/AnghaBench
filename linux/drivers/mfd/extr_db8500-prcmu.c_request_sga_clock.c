
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int PRCM_CGATING_BYPASS ;
 int PRCM_CGATING_BYPASS_ICN2 ;
 int readl (int ) ;
 int request_clock (int ,int) ;
 int writel (int,int ) ;

__attribute__((used)) static int request_sga_clock(u8 clock, bool enable)
{
 u32 val;
 int ret;

 if (enable) {
  val = readl(PRCM_CGATING_BYPASS);
  writel(val | PRCM_CGATING_BYPASS_ICN2, PRCM_CGATING_BYPASS);
 }

 ret = request_clock(clock, enable);

 if (!ret && !enable) {
  val = readl(PRCM_CGATING_BYPASS);
  writel(val & ~PRCM_CGATING_BYPASS_ICN2, PRCM_CGATING_BYPASS);
 }

 return ret;
}
