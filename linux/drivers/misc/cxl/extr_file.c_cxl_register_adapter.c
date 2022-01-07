
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class; } ;
struct cxl {TYPE_1__ dev; } ;


 int cxl_class ;
 int device_register (TYPE_1__*) ;

int cxl_register_adapter(struct cxl *adapter)
{
 adapter->dev.class = cxl_class;







 return device_register(&adapter->dev);
}
