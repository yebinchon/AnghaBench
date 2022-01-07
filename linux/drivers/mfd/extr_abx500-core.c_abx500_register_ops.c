
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct abx500_ops {int dummy; } ;
struct abx500_device_entry {int list; int ops; struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int abx500_list ;
 struct abx500_device_entry* devm_kzalloc (struct device*,int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,struct abx500_ops*,int) ;

int abx500_register_ops(struct device *dev, struct abx500_ops *ops)
{
 struct abx500_device_entry *dev_entry;

 dev_entry = devm_kzalloc(dev, sizeof(*dev_entry), GFP_KERNEL);
 if (!dev_entry)
  return -ENOMEM;

 dev_entry->dev = dev;
 memcpy(&dev_entry->ops, ops, sizeof(*ops));

 list_add_tail(&dev_entry->list, &abx500_list);
 return 0;
}
