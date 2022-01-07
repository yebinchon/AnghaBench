
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id_len; int id; } ;
struct nsim_dev {int fw_update_status; int test1; int max_macs; int port_list_lock; int port_list; TYPE_1__ switch_id; struct nsim_bus_dev* nsim_bus_dev; } ;
struct nsim_bus_dev {int dev; } ;
struct devlink {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 struct nsim_dev* ERR_PTR (int) ;
 int INIT_LIST_HEAD (int *) ;
 int NSIM_DEV_MAX_MACS_DEFAULT ;
 int NSIM_DEV_TEST1_DEFAULT ;
 struct devlink* devlink_alloc (int *,int) ;
 int devlink_free (struct devlink*) ;
 int devlink_params_publish (struct devlink*) ;
 int devlink_params_register (struct devlink*,int ,int ) ;
 int devlink_params_unregister (struct devlink*,int ,int ) ;
 struct nsim_dev* devlink_priv (struct devlink*) ;
 int devlink_register (struct devlink*,int *) ;
 int devlink_resources_unregister (struct devlink*,int *) ;
 int devlink_unregister (struct devlink*) ;
 int get_random_bytes (int ,int) ;
 int mutex_init (int *) ;
 int nsim_bpf_dev_init (struct nsim_dev*) ;
 int nsim_dev_debugfs_exit (struct nsim_dev*) ;
 int nsim_dev_debugfs_init (struct nsim_dev*) ;
 int nsim_dev_devlink_ops ;
 int nsim_dev_dummy_region_exit (struct nsim_dev*) ;
 int nsim_dev_dummy_region_init (struct nsim_dev*,struct devlink*) ;
 int nsim_dev_resources_register (struct devlink*) ;
 int nsim_dev_traps_exit (struct devlink*) ;
 int nsim_dev_traps_init (struct devlink*) ;
 int nsim_devlink_params ;
 int nsim_devlink_set_params_init_values (struct nsim_dev*,struct devlink*) ;

__attribute__((used)) static struct nsim_dev *
nsim_dev_create(struct nsim_bus_dev *nsim_bus_dev, unsigned int port_count)
{
 struct nsim_dev *nsim_dev;
 struct devlink *devlink;
 int err;

 devlink = devlink_alloc(&nsim_dev_devlink_ops, sizeof(*nsim_dev));
 if (!devlink)
  return ERR_PTR(-ENOMEM);
 nsim_dev = devlink_priv(devlink);
 nsim_dev->nsim_bus_dev = nsim_bus_dev;
 nsim_dev->switch_id.id_len = sizeof(nsim_dev->switch_id.id);
 get_random_bytes(nsim_dev->switch_id.id, nsim_dev->switch_id.id_len);
 INIT_LIST_HEAD(&nsim_dev->port_list);
 mutex_init(&nsim_dev->port_list_lock);
 nsim_dev->fw_update_status = 1;
 nsim_dev->max_macs = NSIM_DEV_MAX_MACS_DEFAULT;
 nsim_dev->test1 = NSIM_DEV_TEST1_DEFAULT;

 err = nsim_dev_resources_register(devlink);
 if (err)
  goto err_devlink_free;

 err = devlink_register(devlink, &nsim_bus_dev->dev);
 if (err)
  goto err_resources_unregister;

 err = devlink_params_register(devlink, nsim_devlink_params,
          ARRAY_SIZE(nsim_devlink_params));
 if (err)
  goto err_dl_unregister;
 nsim_devlink_set_params_init_values(nsim_dev, devlink);

 err = nsim_dev_dummy_region_init(nsim_dev, devlink);
 if (err)
  goto err_params_unregister;

 err = nsim_dev_traps_init(devlink);
 if (err)
  goto err_dummy_region_exit;

 err = nsim_dev_debugfs_init(nsim_dev);
 if (err)
  goto err_traps_exit;

 err = nsim_bpf_dev_init(nsim_dev);
 if (err)
  goto err_debugfs_exit;

 devlink_params_publish(devlink);
 return nsim_dev;

err_debugfs_exit:
 nsim_dev_debugfs_exit(nsim_dev);
err_traps_exit:
 nsim_dev_traps_exit(devlink);
err_dummy_region_exit:
 nsim_dev_dummy_region_exit(nsim_dev);
err_params_unregister:
 devlink_params_unregister(devlink, nsim_devlink_params,
      ARRAY_SIZE(nsim_devlink_params));
err_dl_unregister:
 devlink_unregister(devlink);
err_resources_unregister:
 devlink_resources_unregister(devlink, ((void*)0));
err_devlink_free:
 devlink_free(devlink);
 return ERR_PTR(err);
}
