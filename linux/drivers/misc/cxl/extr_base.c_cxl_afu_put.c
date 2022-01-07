
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int dev; } ;


 int put_device (int *) ;

void cxl_afu_put(struct cxl_afu *afu)
{
 put_device(&afu->dev);
}
