
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {int current_mode; TYPE_1__* native; int max_procs_virtualised; int num_procs; int dev; } ;
struct TYPE_2__ {int * spa; } ;


 int CXL_MODE_DIRECTED ;
 int CXL_PSL_AMOR_An ;
 int CXL_PSL_ID_An ;
 int CXL_PSL_ID_An_F ;
 int CXL_PSL_ID_An_L ;
 int CXL_PSL_SCNTL_An ;
 int CXL_PSL_SCNTL_An_PM_AFU ;
 int ENOMEM ;
 int attach_spa (struct cxl_afu*) ;
 scalar_t__ cxl_alloc_spa (struct cxl_afu*,int ) ;
 int cxl_chardev_afu_remove (struct cxl_afu*) ;
 int cxl_chardev_m_afu_add (struct cxl_afu*) ;
 int cxl_chardev_s_afu_add (struct cxl_afu*) ;
 scalar_t__ cxl_is_power8 () ;
 int cxl_p1n_write (struct cxl_afu*,int ,int) ;
 int cxl_sysfs_afu_m_add (struct cxl_afu*) ;
 int cxl_sysfs_afu_m_remove (struct cxl_afu*) ;
 int dev_info (int *,char*) ;

__attribute__((used)) static int activate_afu_directed(struct cxl_afu *afu)
{
 int rc;

 dev_info(&afu->dev, "Activating AFU directed mode\n");

 afu->num_procs = afu->max_procs_virtualised;
 if (afu->native->spa == ((void*)0)) {
  if (cxl_alloc_spa(afu, CXL_MODE_DIRECTED))
   return -ENOMEM;
 }
 attach_spa(afu);

 cxl_p1n_write(afu, CXL_PSL_SCNTL_An, CXL_PSL_SCNTL_An_PM_AFU);
 if (cxl_is_power8())
  cxl_p1n_write(afu, CXL_PSL_AMOR_An, 0xFFFFFFFFFFFFFFFFULL);
 cxl_p1n_write(afu, CXL_PSL_ID_An, CXL_PSL_ID_An_F | CXL_PSL_ID_An_L);

 afu->current_mode = CXL_MODE_DIRECTED;

 if ((rc = cxl_chardev_m_afu_add(afu)))
  return rc;

 if ((rc = cxl_sysfs_afu_m_add(afu)))
  goto err;

 if ((rc = cxl_chardev_s_afu_add(afu)))
  goto err1;

 return 0;
err1:
 cxl_sysfs_afu_m_remove(afu);
err:
 cxl_chardev_afu_remove(afu);
 return rc;
}
