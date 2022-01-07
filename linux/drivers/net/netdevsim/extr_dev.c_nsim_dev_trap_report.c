
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct nsim_trap_item {scalar_t__ action; int trap_ctx; } ;
struct nsim_trap_data {int trap_lock; struct nsim_trap_item* trap_items_arr; } ;
struct nsim_dev_port {int devlink_port; TYPE_1__* ns; } ;
struct nsim_dev {struct nsim_trap_data* trap_data; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int netdev; struct nsim_dev* nsim_dev; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ DEVLINK_TRAP_ACTION_DROP ;
 int consume_skb (struct sk_buff*) ;
 int devlink_trap_report (struct devlink*,struct sk_buff*,int ,int *) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 struct sk_buff* nsim_dev_trap_skb_build () ;
 int nsim_traps_arr ;
 struct devlink* priv_to_devlink (struct nsim_dev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nsim_dev_trap_report(struct nsim_dev_port *nsim_dev_port)
{
 struct nsim_dev *nsim_dev = nsim_dev_port->ns->nsim_dev;
 struct devlink *devlink = priv_to_devlink(nsim_dev);
 struct nsim_trap_data *nsim_trap_data;
 int i;

 nsim_trap_data = nsim_dev->trap_data;

 spin_lock(&nsim_trap_data->trap_lock);
 for (i = 0; i < ARRAY_SIZE(nsim_traps_arr); i++) {
  struct nsim_trap_item *nsim_trap_item;
  struct sk_buff *skb;

  nsim_trap_item = &nsim_trap_data->trap_items_arr[i];
  if (nsim_trap_item->action == DEVLINK_TRAP_ACTION_DROP)
   continue;

  skb = nsim_dev_trap_skb_build();
  if (!skb)
   continue;
  skb->dev = nsim_dev_port->ns->netdev;






  local_bh_disable();
  devlink_trap_report(devlink, skb, nsim_trap_item->trap_ctx,
        &nsim_dev_port->devlink_port);
  local_bh_enable();
  consume_skb(skb);
 }
 spin_unlock(&nsim_trap_data->trap_lock);
}
