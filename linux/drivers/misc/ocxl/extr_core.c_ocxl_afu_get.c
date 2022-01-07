
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_afu {int kref; } ;


 int kref_get (int *) ;

void ocxl_afu_get(struct ocxl_afu *afu)
{
 kref_get(&afu->kref);
}
