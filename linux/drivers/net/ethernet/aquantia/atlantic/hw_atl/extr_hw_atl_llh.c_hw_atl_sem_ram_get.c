
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_FW_SM_RAM ;
 int hw_atl_reg_glb_cpu_sem_get (struct aq_hw_s*,int ) ;

u32 hw_atl_sem_ram_get(struct aq_hw_s *self)
{
 return hw_atl_reg_glb_cpu_sem_get(self, HW_ATL_FW_SM_RAM);
}
