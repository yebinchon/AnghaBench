
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_dev {int dummy; } ;
struct nsim_bus_dev {int dev; } ;


 struct nsim_dev* dev_get_drvdata (int *) ;
 int nsim_dev_destroy (struct nsim_dev*) ;
 int nsim_dev_port_del_all (struct nsim_dev*) ;

void nsim_dev_remove(struct nsim_bus_dev *nsim_bus_dev)
{
 struct nsim_dev *nsim_dev = dev_get_drvdata(&nsim_bus_dev->dev);

 nsim_dev_port_del_all(nsim_dev);
 nsim_dev_destroy(nsim_dev);
}
