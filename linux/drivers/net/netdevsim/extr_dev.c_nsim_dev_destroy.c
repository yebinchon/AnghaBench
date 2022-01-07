
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_dev {int port_list_lock; } ;
struct devlink {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int devlink_free (struct devlink*) ;
 int devlink_params_unregister (struct devlink*,int ,int ) ;
 int devlink_resources_unregister (struct devlink*,int *) ;
 int devlink_unregister (struct devlink*) ;
 int mutex_destroy (int *) ;
 int nsim_bpf_dev_exit (struct nsim_dev*) ;
 int nsim_dev_debugfs_exit (struct nsim_dev*) ;
 int nsim_dev_dummy_region_exit (struct nsim_dev*) ;
 int nsim_dev_traps_exit (struct devlink*) ;
 int nsim_devlink_params ;
 struct devlink* priv_to_devlink (struct nsim_dev*) ;

__attribute__((used)) static void nsim_dev_destroy(struct nsim_dev *nsim_dev)
{
 struct devlink *devlink = priv_to_devlink(nsim_dev);

 nsim_bpf_dev_exit(nsim_dev);
 nsim_dev_debugfs_exit(nsim_dev);
 nsim_dev_traps_exit(devlink);
 nsim_dev_dummy_region_exit(nsim_dev);
 devlink_params_unregister(devlink, nsim_devlink_params,
      ARRAY_SIZE(nsim_devlink_params));
 devlink_unregister(devlink);
 devlink_resources_unregister(devlink, ((void*)0));
 mutex_destroy(&nsim_dev->port_list_lock);
 devlink_free(devlink);
}
