
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_trap_item {int dummy; } ;
struct nsim_trap_data {struct nsim_trap_data* trap_items_arr; int trap_report_dw; struct nsim_dev* nsim_dev; int trap_lock; } ;
struct nsim_dev {struct nsim_trap_data* trap_data; } ;
struct devlink {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int NSIM_TRAP_REPORT_INTERVAL_MS ;
 struct nsim_dev* devlink_priv (struct devlink*) ;
 int devlink_traps_register (struct devlink*,int ,int ,int *) ;
 struct nsim_trap_data* kcalloc (int ,int,int ) ;
 int kfree (struct nsim_trap_data*) ;
 struct nsim_trap_data* kzalloc (int,int ) ;
 int msecs_to_jiffies (int ) ;
 int nsim_dev_trap_report_work ;
 int nsim_traps_arr ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int nsim_dev_traps_init(struct devlink *devlink)
{
 struct nsim_dev *nsim_dev = devlink_priv(devlink);
 struct nsim_trap_data *nsim_trap_data;
 int err;

 nsim_trap_data = kzalloc(sizeof(*nsim_trap_data), GFP_KERNEL);
 if (!nsim_trap_data)
  return -ENOMEM;

 nsim_trap_data->trap_items_arr = kcalloc(ARRAY_SIZE(nsim_traps_arr),
       sizeof(struct nsim_trap_item),
       GFP_KERNEL);
 if (!nsim_trap_data->trap_items_arr) {
  err = -ENOMEM;
  goto err_trap_data_free;
 }





 spin_lock_init(&nsim_trap_data->trap_lock);
 nsim_trap_data->nsim_dev = nsim_dev;
 nsim_dev->trap_data = nsim_trap_data;

 err = devlink_traps_register(devlink, nsim_traps_arr,
         ARRAY_SIZE(nsim_traps_arr), ((void*)0));
 if (err)
  goto err_trap_items_free;

 INIT_DELAYED_WORK(&nsim_dev->trap_data->trap_report_dw,
     nsim_dev_trap_report_work);
 schedule_delayed_work(&nsim_dev->trap_data->trap_report_dw,
         msecs_to_jiffies(NSIM_TRAP_REPORT_INTERVAL_MS));

 return 0;

err_trap_items_free:
 kfree(nsim_trap_data->trap_items_arr);
err_trap_data_free:
 kfree(nsim_trap_data);
 return err;
}
