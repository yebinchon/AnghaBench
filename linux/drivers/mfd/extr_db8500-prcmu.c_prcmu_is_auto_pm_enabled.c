
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int auto_pm_enabled; } ;


 TYPE_1__ mb2_transfer ;

bool prcmu_is_auto_pm_enabled(void)
{
 return mb2_transfer.auto_pm_enabled;
}
