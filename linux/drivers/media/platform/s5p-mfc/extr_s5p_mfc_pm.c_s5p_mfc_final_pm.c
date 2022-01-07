
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_dev {int dummy; } ;
struct TYPE_2__ {int device; } ;


 TYPE_1__* pm ;
 int pm_runtime_disable (int ) ;

void s5p_mfc_final_pm(struct s5p_mfc_dev *dev)
{
 pm_runtime_disable(pm->device);
}
