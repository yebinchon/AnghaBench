
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {int num_procs; int current_mode; TYPE_1__* native; int dev; } ;
struct TYPE_2__ {int * spa; } ;


 int CXL_MODE_DEDICATED ;
 int CXL_PSL_ID_An ;
 int CXL_PSL_ID_An_F ;
 int CXL_PSL_ID_An_L ;
 int CXL_PSL_SCNTL_An ;
 int CXL_PSL_SCNTL_An_PM_Process ;
 int ENOMEM ;
 int attach_spa (struct cxl_afu*) ;
 scalar_t__ cxl_alloc_spa (struct cxl_afu*,int ) ;
 int cxl_chardev_d_afu_add (struct cxl_afu*) ;
 int cxl_p1n_write (struct cxl_afu*,int ,int) ;
 int dev_info (int *,char*) ;

int cxl_activate_dedicated_process_psl9(struct cxl_afu *afu)
{
 dev_info(&afu->dev, "Activating dedicated process mode\n");
 afu->num_procs = 1;
 if (afu->native->spa == ((void*)0)) {
  if (cxl_alloc_spa(afu, CXL_MODE_DEDICATED))
   return -ENOMEM;
 }
 attach_spa(afu);

 cxl_p1n_write(afu, CXL_PSL_SCNTL_An, CXL_PSL_SCNTL_An_PM_Process);
 cxl_p1n_write(afu, CXL_PSL_ID_An, CXL_PSL_ID_An_F | CXL_PSL_ID_An_L);

 afu->current_mode = CXL_MODE_DEDICATED;

 return cxl_chardev_d_afu_add(afu);
}
