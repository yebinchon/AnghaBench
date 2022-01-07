
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {TYPE_1__* adapter; } ;
struct TYPE_2__ {int perst_same_image; } ;



void cxl_perst_reloads_same_image(struct cxl_afu *afu,
      bool perst_reloads_same_image)
{
 afu->adapter->perst_same_image = perst_reloads_same_image;
}
