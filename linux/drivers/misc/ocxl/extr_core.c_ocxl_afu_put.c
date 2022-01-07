
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_afu {int kref; } ;


 int free_afu ;
 int kref_put (int *,int ) ;

void ocxl_afu_put(struct ocxl_afu *afu)
{
 kref_put(&afu->kref, free_afu);
}
