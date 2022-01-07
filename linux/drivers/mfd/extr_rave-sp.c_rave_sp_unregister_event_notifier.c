
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blocking_notifier_head {int dummy; } ;
struct rave_sp {struct blocking_notifier_head event_notifier_list; } ;
struct notifier_block {int dummy; } ;
struct device {int parent; } ;


 int WARN_ON (int ) ;
 int blocking_notifier_chain_unregister (struct blocking_notifier_head*,struct notifier_block*) ;
 struct rave_sp* dev_get_drvdata (int ) ;

__attribute__((used)) static void rave_sp_unregister_event_notifier(struct device *dev, void *res)
{
 struct rave_sp *sp = dev_get_drvdata(dev->parent);
 struct notifier_block *nb = *(struct notifier_block **)res;
 struct blocking_notifier_head *bnh = &sp->event_notifier_list;

 WARN_ON(blocking_notifier_chain_unregister(bnh, nb));
}
