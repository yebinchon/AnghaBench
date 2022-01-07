
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ PRCM_ACK_MB0_AP_PWRSTTR_STATUS ;
 int readb (scalar_t__) ;
 scalar_t__ tcdm_base ;

u8 db8500_prcmu_get_power_state_result(void)
{
 return readb(tcdm_base + PRCM_ACK_MB0_AP_PWRSTTR_STATUS);
}
