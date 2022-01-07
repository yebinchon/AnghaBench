
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gen_pool {int dummy; } ;
struct TYPE_2__ {int pm_functions; } ;


 int ENODEV ;
 TYPE_1__* emif_instance ;
 void* sram_exec_copy (struct gen_pool*,void*,int *,int) ;

int ti_emif_copy_pm_function_table(struct gen_pool *sram_pool, void *dst)
{
 void *copy_addr;

 if (!emif_instance)
  return -ENODEV;

 copy_addr = sram_exec_copy(sram_pool, dst,
       &emif_instance->pm_functions,
       sizeof(emif_instance->pm_functions));
 if (!copy_addr)
  return -ENODEV;

 return 0;
}
