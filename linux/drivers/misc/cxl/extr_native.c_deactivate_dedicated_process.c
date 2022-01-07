
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {scalar_t__ num_procs; scalar_t__ current_mode; int dev; } ;


 int cxl_chardev_afu_remove (struct cxl_afu*) ;
 int dev_info (int *,char*) ;

__attribute__((used)) static int deactivate_dedicated_process(struct cxl_afu *afu)
{
 dev_info(&afu->dev, "Deactivating dedicated process mode\n");

 afu->current_mode = 0;
 afu->num_procs = 0;

 cxl_chardev_afu_remove(afu);

 return 0;
}
