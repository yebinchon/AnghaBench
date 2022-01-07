
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nsim_trap_item {int action; } ;
struct nsim_dev {TYPE_1__* trap_data; } ;
struct devlink_trap {int id; } ;
struct devlink {int dummy; } ;
typedef enum devlink_trap_action { ____Placeholder_devlink_trap_action } devlink_trap_action ;
struct TYPE_2__ {int trap_lock; } ;


 int ENOENT ;
 scalar_t__ WARN_ON (int) ;
 struct nsim_dev* devlink_priv (struct devlink*) ;
 struct nsim_trap_item* nsim_dev_trap_item_lookup (struct nsim_dev*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
nsim_dev_devlink_trap_action_set(struct devlink *devlink,
     const struct devlink_trap *trap,
     enum devlink_trap_action action)
{
 struct nsim_dev *nsim_dev = devlink_priv(devlink);
 struct nsim_trap_item *nsim_trap_item;

 nsim_trap_item = nsim_dev_trap_item_lookup(nsim_dev, trap->id);
 if (WARN_ON(!nsim_trap_item))
  return -ENOENT;

 spin_lock(&nsim_dev->trap_data->trap_lock);
 nsim_trap_item->action = action;
 spin_unlock(&nsim_dev->trap_data->trap_lock);

 return 0;
}
