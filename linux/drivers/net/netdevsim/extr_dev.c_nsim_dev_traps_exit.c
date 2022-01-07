
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nsim_dev {TYPE_1__* trap_data; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {struct TYPE_2__* trap_items_arr; int trap_report_dw; } ;


 int ARRAY_SIZE (int ) ;
 int cancel_delayed_work_sync (int *) ;
 struct nsim_dev* devlink_priv (struct devlink*) ;
 int devlink_traps_unregister (struct devlink*,int ,int ) ;
 int kfree (TYPE_1__*) ;
 int nsim_traps_arr ;

__attribute__((used)) static void nsim_dev_traps_exit(struct devlink *devlink)
{
 struct nsim_dev *nsim_dev = devlink_priv(devlink);

 cancel_delayed_work_sync(&nsim_dev->trap_data->trap_report_dw);
 devlink_traps_unregister(devlink, nsim_traps_arr,
     ARRAY_SIZE(nsim_traps_arr));
 kfree(nsim_dev->trap_data->trap_items_arr);
 kfree(nsim_dev->trap_data);
}
