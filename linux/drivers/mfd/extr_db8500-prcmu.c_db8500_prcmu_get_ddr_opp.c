
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRCM_DDR_SUBSYS_APE_MINBW ;
 int readb (int ) ;

int db8500_prcmu_get_ddr_opp(void)
{
 return readb(PRCM_DDR_SUBSYS_APE_MINBW);
}
