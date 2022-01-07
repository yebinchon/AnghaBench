
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct rc_dev {int managed_alloc; TYPE_1__ dev; } ;
struct device {int dummy; } ;
typedef enum rc_driver_type { ____Placeholder_rc_driver_type } rc_driver_type ;


 int GFP_KERNEL ;
 int devm_rc_alloc_release ;
 int devres_add (struct device*,struct rc_dev**) ;
 struct rc_dev** devres_alloc (int ,int,int ) ;
 int devres_free (struct rc_dev**) ;
 struct rc_dev* rc_allocate_device (int) ;

struct rc_dev *devm_rc_allocate_device(struct device *dev,
           enum rc_driver_type type)
{
 struct rc_dev **dr, *rc;

 dr = devres_alloc(devm_rc_alloc_release, sizeof(*dr), GFP_KERNEL);
 if (!dr)
  return ((void*)0);

 rc = rc_allocate_device(type);
 if (!rc) {
  devres_free(dr);
  return ((void*)0);
 }

 rc->dev.parent = dev;
 rc->managed_alloc = 1;
 *dr = rc;
 devres_add(dev, dr);

 return rc;
}
