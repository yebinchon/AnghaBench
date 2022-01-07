
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class; } ;
struct cxl_afu {TYPE_1__ dev; } ;


 int cxl_class ;
 int device_register (TYPE_1__*) ;

int cxl_register_afu(struct cxl_afu *afu)
{
 afu->dev.class = cxl_class;

 return device_register(&afu->dev);
}
