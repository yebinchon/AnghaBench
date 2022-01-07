
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct nsim_bus_dev {TYPE_1__ dev; } ;


 int device_unregister (TYPE_1__*) ;
 int ida_free (int *,int ) ;
 int kfree (struct nsim_bus_dev*) ;
 int nsim_bus_dev_ids ;

__attribute__((used)) static void nsim_bus_dev_del(struct nsim_bus_dev *nsim_bus_dev)
{
 device_unregister(&nsim_bus_dev->dev);
 ida_free(&nsim_bus_dev_ids, nsim_bus_dev->dev.id);
 kfree(nsim_bus_dev);
}
