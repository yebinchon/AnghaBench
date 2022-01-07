
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_scancode_filter {int mask; int data; } ;
struct rc_filter_attribute {scalar_t__ type; scalar_t__ mask; } ;
struct rc_dev {int lock; struct rc_scancode_filter scancode_wakeup_filter; struct rc_scancode_filter scancode_filter; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ RC_FILTER_NORMAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct rc_dev* to_rc_dev (struct device*) ;
 struct rc_filter_attribute* to_rc_filter_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_filter(struct device *device,
      struct device_attribute *attr,
      char *buf)
{
 struct rc_dev *dev = to_rc_dev(device);
 struct rc_filter_attribute *fattr = to_rc_filter_attr(attr);
 struct rc_scancode_filter *filter;
 u32 val;

 mutex_lock(&dev->lock);

 if (fattr->type == RC_FILTER_NORMAL)
  filter = &dev->scancode_filter;
 else
  filter = &dev->scancode_wakeup_filter;

 if (fattr->mask)
  val = filter->mask;
 else
  val = filter->data;
 mutex_unlock(&dev->lock);

 return sprintf(buf, "%#x\n", val);
}
