
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b53_device {int ds; int core_rev; int name; int chip_id; TYPE_1__* pdata; int enabled_ports; } ;
struct TYPE_2__ {int enabled_ports; int chip_id; } ;


 int EINVAL ;
 scalar_t__ b53_switch_detect (struct b53_device*) ;
 int b53_switch_init (struct b53_device*) ;
 int dsa_register_switch (int ) ;
 int pr_info (char*,int ,int ) ;

int b53_switch_register(struct b53_device *dev)
{
 int ret;

 if (dev->pdata) {
  dev->chip_id = dev->pdata->chip_id;
  dev->enabled_ports = dev->pdata->enabled_ports;
 }

 if (!dev->chip_id && b53_switch_detect(dev))
  return -EINVAL;

 ret = b53_switch_init(dev);
 if (ret)
  return ret;

 pr_info("found switch: %s, rev %i\n", dev->name, dev->core_rev);

 return dsa_register_switch(dev->ds);
}
