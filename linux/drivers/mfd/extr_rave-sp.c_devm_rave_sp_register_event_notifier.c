
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rave_sp {int event_notifier_list; } ;
struct notifier_block {int dummy; } ;
struct device {int parent; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 struct rave_sp* dev_get_drvdata (int ) ;
 int devres_add (struct device*,struct notifier_block**) ;
 struct notifier_block** devres_alloc (int ,int,int ) ;
 int devres_free (struct notifier_block**) ;
 int rave_sp_unregister_event_notifier ;

int devm_rave_sp_register_event_notifier(struct device *dev,
      struct notifier_block *nb)
{
 struct rave_sp *sp = dev_get_drvdata(dev->parent);
 struct notifier_block **rcnb;
 int ret;

 rcnb = devres_alloc(rave_sp_unregister_event_notifier,
       sizeof(*rcnb), GFP_KERNEL);
 if (!rcnb)
  return -ENOMEM;

 ret = blocking_notifier_chain_register(&sp->event_notifier_list, nb);
 if (!ret) {
  *rcnb = nb;
  devres_add(dev, rcnb);
 } else {
  devres_free(rcnb);
 }

 return ret;
}
