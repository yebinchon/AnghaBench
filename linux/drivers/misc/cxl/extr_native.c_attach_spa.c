
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cxl_afu {TYPE_1__* native; } ;
typedef int __be64 ;
struct TYPE_2__ {int spa_max_procs; int spa_size; int * sw_command_status; scalar_t__ spa; } ;


 int CXL_PSL_SPAP_Addr ;
 int CXL_PSL_SPAP_An ;
 int CXL_PSL_SPAP_Size ;
 int CXL_PSL_SPAP_Size_Shift ;
 int CXL_PSL_SPAP_V ;
 int cxl_p1n_write (struct cxl_afu*,int ,int) ;
 int pr_devel (char*,scalar_t__,int,int *,int) ;
 int virt_to_phys (scalar_t__) ;

__attribute__((used)) static void attach_spa(struct cxl_afu *afu)
{
 u64 spap;

 afu->native->sw_command_status = (__be64 *)((char *)afu->native->spa +
         ((afu->native->spa_max_procs + 3) * 128));

 spap = virt_to_phys(afu->native->spa) & CXL_PSL_SPAP_Addr;
 spap |= ((afu->native->spa_size >> (12 - CXL_PSL_SPAP_Size_Shift)) - 1) & CXL_PSL_SPAP_Size;
 spap |= CXL_PSL_SPAP_V;
 pr_devel("cxl: SPA allocated at 0x%p. Max processes: %i, sw_command_status: 0x%p CXL_PSL_SPAP_An=0x%016llx\n",
  afu->native->spa, afu->native->spa_max_procs,
  afu->native->sw_command_status, spap);
 cxl_p1n_write(afu, CXL_PSL_SPAP_An, spap);
}
