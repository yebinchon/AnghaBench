
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_scancode_filter {unsigned long mask; unsigned long data; } ;
struct rc_filter_attribute {scalar_t__ type; scalar_t__ mask; } ;
struct rc_dev {int (* s_filter ) (struct rc_dev*,struct rc_scancode_filter*) ;int (* s_wakeup_filter ) (struct rc_dev*,struct rc_scancode_filter*) ;scalar_t__ wakeup_protocol; int lock; int enabled_protocols; struct rc_scancode_filter scancode_wakeup_filter; struct rc_scancode_filter scancode_filter; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ RC_FILTER_NORMAL ;
 scalar_t__ RC_FILTER_WAKEUP ;
 scalar_t__ RC_PROTO_UNKNOWN ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rc_validate_filter (struct rc_dev*,struct rc_scancode_filter*) ;
 struct rc_dev* to_rc_dev (struct device*) ;
 struct rc_filter_attribute* to_rc_filter_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_filter(struct device *device,
       struct device_attribute *attr,
       const char *buf, size_t len)
{
 struct rc_dev *dev = to_rc_dev(device);
 struct rc_filter_attribute *fattr = to_rc_filter_attr(attr);
 struct rc_scancode_filter new_filter, *filter;
 int ret;
 unsigned long val;
 int (*set_filter)(struct rc_dev *dev, struct rc_scancode_filter *filter);

 ret = kstrtoul(buf, 0, &val);
 if (ret < 0)
  return ret;

 if (fattr->type == RC_FILTER_NORMAL) {
  set_filter = dev->s_filter;
  filter = &dev->scancode_filter;
 } else {
  set_filter = dev->s_wakeup_filter;
  filter = &dev->scancode_wakeup_filter;
 }

 if (!set_filter)
  return -EINVAL;

 mutex_lock(&dev->lock);

 new_filter = *filter;
 if (fattr->mask)
  new_filter.mask = val;
 else
  new_filter.data = val;

 if (fattr->type == RC_FILTER_WAKEUP) {




  if (dev->wakeup_protocol != RC_PROTO_UNKNOWN)
   ret = rc_validate_filter(dev, &new_filter);
  else
   ret = -EINVAL;

  if (ret != 0)
   goto unlock;
 }

 if (fattr->type == RC_FILTER_NORMAL && !dev->enabled_protocols &&
     val) {

  ret = -EINVAL;
  goto unlock;
 }

 ret = set_filter(dev, &new_filter);
 if (ret < 0)
  goto unlock;

 *filter = new_filter;

unlock:
 mutex_unlock(&dev->lock);
 return (ret < 0) ? ret : len;
}
