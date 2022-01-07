
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_dev {int port_list_lock; } ;
struct nsim_bus_dev {int port_count; int dev; } ;


 scalar_t__ IS_ERR (struct nsim_dev*) ;
 int PTR_ERR (struct nsim_dev*) ;
 int __nsim_dev_port_add (struct nsim_dev*,int) ;
 int dev_set_drvdata (int *,struct nsim_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nsim_dev* nsim_dev_create (struct nsim_bus_dev*,int) ;
 int nsim_dev_destroy (struct nsim_dev*) ;
 int nsim_dev_port_del_all (struct nsim_dev*) ;

int nsim_dev_probe(struct nsim_bus_dev *nsim_bus_dev)
{
 struct nsim_dev *nsim_dev;
 int i;
 int err;

 nsim_dev = nsim_dev_create(nsim_bus_dev, nsim_bus_dev->port_count);
 if (IS_ERR(nsim_dev))
  return PTR_ERR(nsim_dev);
 dev_set_drvdata(&nsim_bus_dev->dev, nsim_dev);

 mutex_lock(&nsim_dev->port_list_lock);
 for (i = 0; i < nsim_bus_dev->port_count; i++) {
  err = __nsim_dev_port_add(nsim_dev, i);
  if (err)
   goto err_port_del_all;
 }
 mutex_unlock(&nsim_dev->port_list_lock);
 return 0;

err_port_del_all:
 mutex_unlock(&nsim_dev->port_list_lock);
 nsim_dev_port_del_all(nsim_dev);
 nsim_dev_destroy(nsim_dev);
 return err;
}
