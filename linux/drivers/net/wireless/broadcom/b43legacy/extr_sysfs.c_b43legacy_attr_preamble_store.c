
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct b43legacy_wldev {int short_preamble; TYPE_1__* wl; } ;
typedef int ssize_t ;
struct TYPE_2__ {int mutex; int irq_lock; } ;


 int CAP_NET_ADMIN ;
 int EPERM ;
 int capable (int ) ;
 struct b43legacy_wldev* dev_to_b43legacy_wldev (struct device*) ;
 int get_boolean (char const*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t b43legacy_attr_preamble_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct b43legacy_wldev *wldev = dev_to_b43legacy_wldev(dev);
 unsigned long flags;
 int value;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 value = get_boolean(buf, count);
 if (value < 0)
  return value;
 mutex_lock(&wldev->wl->mutex);
 spin_lock_irqsave(&wldev->wl->irq_lock, flags);

 wldev->short_preamble = !!value;

 spin_unlock_irqrestore(&wldev->wl->irq_lock, flags);
 mutex_unlock(&wldev->wl->mutex);

 return count;
}
