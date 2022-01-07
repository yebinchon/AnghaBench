
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_GLB_CPU_SEM_ADR (int ) ;
 int aq_hw_write_reg (struct aq_hw_s*,int ,int ) ;

void hw_atl_reg_glb_cpu_sem_set(struct aq_hw_s *aq_hw, u32 glb_cpu_sem,
    u32 semaphore)
{
 aq_hw_write_reg(aq_hw, HW_ATL_GLB_CPU_SEM_ADR(semaphore), glb_cpu_sem);
}
