
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int debugfs; } ;


 int debugfs_remove_recursive (int ) ;

void cxl_debugfs_afu_remove(struct cxl_afu *afu)
{
 debugfs_remove_recursive(afu->debugfs);
}
