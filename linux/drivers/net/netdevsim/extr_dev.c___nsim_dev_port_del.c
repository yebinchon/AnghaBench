
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_port {int dummy; } ;
struct nsim_dev_port {int ns; int list; struct devlink_port devlink_port; } ;


 int devlink_port_type_clear (struct devlink_port*) ;
 int devlink_port_unregister (struct devlink_port*) ;
 int kfree (struct nsim_dev_port*) ;
 int list_del (int *) ;
 int nsim_destroy (int ) ;
 int nsim_dev_port_debugfs_exit (struct nsim_dev_port*) ;

__attribute__((used)) static void __nsim_dev_port_del(struct nsim_dev_port *nsim_dev_port)
{
 struct devlink_port *devlink_port = &nsim_dev_port->devlink_port;

 list_del(&nsim_dev_port->list);
 devlink_port_type_clear(devlink_port);
 nsim_destroy(nsim_dev_port->ns);
 nsim_dev_port_debugfs_exit(nsim_dev_port);
 devlink_port_unregister(devlink_port);
 kfree(nsim_dev_port);
}
