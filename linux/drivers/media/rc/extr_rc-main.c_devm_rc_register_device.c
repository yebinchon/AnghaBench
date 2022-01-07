
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_rc_release ;
 int devres_add (struct device*,struct rc_dev**) ;
 struct rc_dev** devres_alloc (int ,int,int ) ;
 int devres_free (struct rc_dev**) ;
 int rc_register_device (struct rc_dev*) ;

int devm_rc_register_device(struct device *parent, struct rc_dev *dev)
{
 struct rc_dev **dr;
 int ret;

 dr = devres_alloc(devm_rc_release, sizeof(*dr), GFP_KERNEL);
 if (!dr)
  return -ENOMEM;

 ret = rc_register_device(dev);
 if (ret) {
  devres_free(dr);
  return ret;
 }

 *dr = dev;
 devres_add(parent, dr);

 return 0;
}
