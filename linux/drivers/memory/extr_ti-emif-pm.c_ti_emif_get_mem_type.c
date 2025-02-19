
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ti_emif_base_addr_virt; } ;
struct TYPE_4__ {TYPE_1__ pm_data; } ;


 scalar_t__ EMIF_SDRAM_CONFIG ;
 int ENODEV ;
 unsigned long SDRAM_TYPE_MASK ;
 unsigned long SDRAM_TYPE_SHIFT ;
 TYPE_2__* emif_instance ;
 unsigned long readl (scalar_t__) ;

int ti_emif_get_mem_type(void)
{
 unsigned long temp;

 if (!emif_instance)
  return -ENODEV;

 temp = readl(emif_instance->pm_data.ti_emif_base_addr_virt +
       EMIF_SDRAM_CONFIG);

 temp = (temp & SDRAM_TYPE_MASK) >> SDRAM_TYPE_SHIFT;
 return temp;
}
