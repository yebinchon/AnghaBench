
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; int * type; int * bus; } ;
struct nsim_bus_dev {unsigned int port_count; TYPE_1__ dev; } ;


 int ENOMEM ;
 struct nsim_bus_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int device_register (TYPE_1__*) ;
 int ida_alloc_range (int *,unsigned int,unsigned int,int ) ;
 int ida_free (int *,int) ;
 int kfree (struct nsim_bus_dev*) ;
 struct nsim_bus_dev* kzalloc (int,int ) ;
 int nsim_bus ;
 int nsim_bus_dev_ids ;
 int nsim_bus_dev_type ;

__attribute__((used)) static struct nsim_bus_dev *
nsim_bus_dev_new(unsigned int id, unsigned int port_count)
{
 struct nsim_bus_dev *nsim_bus_dev;
 int err;

 nsim_bus_dev = kzalloc(sizeof(*nsim_bus_dev), GFP_KERNEL);
 if (!nsim_bus_dev)
  return ERR_PTR(-ENOMEM);

 err = ida_alloc_range(&nsim_bus_dev_ids, id, id, GFP_KERNEL);
 if (err < 0)
  goto err_nsim_bus_dev_free;
 nsim_bus_dev->dev.id = err;
 nsim_bus_dev->dev.bus = &nsim_bus;
 nsim_bus_dev->dev.type = &nsim_bus_dev_type;
 nsim_bus_dev->port_count = port_count;

 err = device_register(&nsim_bus_dev->dev);
 if (err)
  goto err_nsim_bus_dev_id_free;
 return nsim_bus_dev;

err_nsim_bus_dev_id_free:
 ida_free(&nsim_bus_dev_ids, nsim_bus_dev->dev.id);
err_nsim_bus_dev_free:
 kfree(nsim_bus_dev);
 return ERR_PTR(err);
}
