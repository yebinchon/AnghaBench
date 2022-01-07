
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct sdio_func {TYPE_1__ dev; } ;


 int device_del (TYPE_1__*) ;
 int of_node_put (int ) ;
 int put_device (TYPE_1__*) ;
 int sdio_func_present (struct sdio_func*) ;

void sdio_remove_func(struct sdio_func *func)
{
 if (!sdio_func_present(func))
  return;

 device_del(&func->dev);
 of_node_put(func->dev.of_node);
 put_device(&func->dev);
}
