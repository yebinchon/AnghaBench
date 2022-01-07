
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_trap_item {int action; void* trap_ctx; } ;
struct nsim_dev {int dummy; } ;
struct devlink_trap {int init_action; int id; } ;
struct devlink {int dummy; } ;


 int ENOENT ;
 scalar_t__ WARN_ON (int) ;
 struct nsim_dev* devlink_priv (struct devlink*) ;
 struct nsim_trap_item* nsim_dev_trap_item_lookup (struct nsim_dev*,int ) ;

__attribute__((used)) static int nsim_dev_devlink_trap_init(struct devlink *devlink,
          const struct devlink_trap *trap,
          void *trap_ctx)
{
 struct nsim_dev *nsim_dev = devlink_priv(devlink);
 struct nsim_trap_item *nsim_trap_item;

 nsim_trap_item = nsim_dev_trap_item_lookup(nsim_dev, trap->id);
 if (WARN_ON(!nsim_trap_item))
  return -ENOENT;

 nsim_trap_item->trap_ctx = trap_ctx;
 nsim_trap_item->action = trap->init_action;

 return 0;
}
