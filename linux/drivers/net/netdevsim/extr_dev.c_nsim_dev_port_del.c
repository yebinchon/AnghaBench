
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_dev_port {int dummy; } ;
struct nsim_dev {int port_list_lock; } ;
struct nsim_bus_dev {int dev; } ;


 int ENOENT ;
 int __nsim_dev_port_del (struct nsim_dev_port*) ;
 struct nsim_dev_port* __nsim_dev_port_lookup (struct nsim_dev*,unsigned int) ;
 struct nsim_dev* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int nsim_dev_port_del(struct nsim_bus_dev *nsim_bus_dev,
        unsigned int port_index)
{
 struct nsim_dev *nsim_dev = dev_get_drvdata(&nsim_bus_dev->dev);
 struct nsim_dev_port *nsim_dev_port;
 int err = 0;

 mutex_lock(&nsim_dev->port_list_lock);
 nsim_dev_port = __nsim_dev_port_lookup(nsim_dev, port_index);
 if (!nsim_dev_port)
  err = -ENOENT;
 else
  __nsim_dev_port_del(nsim_dev_port);
 mutex_unlock(&nsim_dev->port_list_lock);
 return err;
}
