
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ PRCM_SW_RST_REASON ;
 int readw (scalar_t__) ;
 scalar_t__ tcdm_base ;

u16 db8500_prcmu_get_reset_code(void)
{
 return readw(tcdm_base + PRCM_SW_RST_REASON);
}
