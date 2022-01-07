
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRCM_AVS_ISMODEENABLE_MASK ;
 scalar_t__ PRCM_AVS_VARM_MAX_OPP ;
 int readb (scalar_t__) ;
 scalar_t__ tcdm_base ;

bool prcmu_has_arm_maxopp(void)
{
 return (readb(tcdm_base + PRCM_AVS_VARM_MAX_OPP) &
  PRCM_AVS_ISMODEENABLE_MASK) == PRCM_AVS_ISMODEENABLE_MASK;
}
