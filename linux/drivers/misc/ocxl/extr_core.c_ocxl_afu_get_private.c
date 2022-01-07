
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_afu {void* private; } ;



void *ocxl_afu_get_private(struct ocxl_afu *afu)
{
 if (afu)
  return afu->private;

 return ((void*)0);
}
