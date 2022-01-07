
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int dev; } ;


 int * get_device (int *) ;

struct cxl_afu *cxl_afu_get(struct cxl_afu *afu)
{
 return (get_device(&afu->dev) == ((void*)0)) ? ((void*)0) : afu;
}
