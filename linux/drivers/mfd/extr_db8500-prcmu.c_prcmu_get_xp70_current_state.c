
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ap_pwrst { ____Placeholder_ap_pwrst } ap_pwrst ;


 scalar_t__ PRCM_XP70_CUR_PWR_STATE ;
 int readb (scalar_t__) ;
 scalar_t__ tcdm_base ;

enum ap_pwrst prcmu_get_xp70_current_state(void)
{
 return readb(tcdm_base + PRCM_XP70_CUR_PWR_STATE);
}
