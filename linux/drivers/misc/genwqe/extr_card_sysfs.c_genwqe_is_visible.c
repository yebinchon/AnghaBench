
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct kobject {int dummy; } ;
struct genwqe_dev {int dummy; } ;
struct device {int dummy; } ;
struct attribute {int mode; } ;


 struct genwqe_dev* dev_get_drvdata (struct device*) ;
 scalar_t__ genwqe_is_privileged (struct genwqe_dev*) ;
 struct attribute** genwqe_normal_attributes ;
 struct device* kobj_to_dev (struct kobject*) ;

__attribute__((used)) static umode_t genwqe_is_visible(struct kobject *kobj,
     struct attribute *attr, int n)
{
 unsigned int j;
 struct device *dev = kobj_to_dev(kobj);
 struct genwqe_dev *cd = dev_get_drvdata(dev);
 umode_t mode = attr->mode;

 if (genwqe_is_privileged(cd))
  return mode;

 for (j = 0; genwqe_normal_attributes[j] != ((void*)0); j++)
  if (genwqe_normal_attributes[j] == attr)
   return mode;

 return 0;
}
