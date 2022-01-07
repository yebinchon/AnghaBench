
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PRCM_ACK_MB1_CURRENT_ARM_OPP ;
 int readb (scalar_t__) ;
 scalar_t__ tcdm_base ;

int db8500_prcmu_get_arm_opp(void)
{
 return readb(tcdm_base + PRCM_ACK_MB1_CURRENT_ARM_OPP);
}
