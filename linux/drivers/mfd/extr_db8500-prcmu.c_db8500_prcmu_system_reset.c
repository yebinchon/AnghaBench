
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int PRCM_APE_SOFTRST ;
 scalar_t__ PRCM_SW_RST_REASON ;
 scalar_t__ tcdm_base ;
 int writel (int,int ) ;
 int writew (int ,scalar_t__) ;

void db8500_prcmu_system_reset(u16 reset_code)
{
 writew(reset_code, (tcdm_base + PRCM_SW_RST_REASON));
 writel(1, PRCM_APE_SOFTRST);
}
