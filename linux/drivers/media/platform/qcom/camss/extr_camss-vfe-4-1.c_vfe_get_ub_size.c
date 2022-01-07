
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;


 int MSM_VFE_VFE0_UB_SIZE_RDI ;

__attribute__((used)) static u16 vfe_get_ub_size(u8 vfe_id)
{
 if (vfe_id == 0)
  return MSM_VFE_VFE0_UB_SIZE_RDI;

 return 0;
}
