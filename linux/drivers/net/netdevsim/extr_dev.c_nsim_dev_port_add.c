
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_dev {int port_list_lock; } ;
struct nsim_bus_dev {int dev; } ;


 int EEXIST ;
 int __nsim_dev_port_add (struct nsim_dev*,unsigned int) ;
 scalar_t__ __nsim_dev_port_lookup (struct nsim_dev*,unsigned int) ;
 struct nsim_dev* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int nsim_dev_port_add(struct nsim_bus_dev *nsim_bus_dev,
        unsigned int port_index)
{
 struct nsim_dev *nsim_dev = dev_get_drvdata(&nsim_bus_dev->dev);
 int err;

 mutex_lock(&nsim_dev->port_list_lock);
 if (__nsim_dev_port_lookup(nsim_dev, port_index))
  err = -EEXIST;
 else
  err = __nsim_dev_port_add(nsim_dev, port_index);
 mutex_unlock(&nsim_dev->port_list_lock);
 return err;
}
