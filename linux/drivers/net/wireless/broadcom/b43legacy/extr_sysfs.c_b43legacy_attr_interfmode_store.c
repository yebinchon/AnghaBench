
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct b43legacy_wldev {TYPE_1__* wl; } ;
typedef int ssize_t ;
struct TYPE_2__ {int mutex; int irq_lock; } ;


 int B43legacy_INTERFMODE_AUTOWLAN ;
 int B43legacy_INTERFMODE_MANUALWLAN ;
 int B43legacy_INTERFMODE_NONE ;
 int B43legacy_INTERFMODE_NONWLAN ;
 int CAP_NET_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int b43legacy_radio_set_interference_mitigation (struct b43legacy_wldev*,int) ;
 int b43legacyerr (TYPE_1__*,char*) ;
 int capable (int ) ;
 struct b43legacy_wldev* dev_to_b43legacy_wldev (struct device*) ;
 int get_integer (char const*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t b43legacy_attr_interfmode_store(struct device *dev,
            struct device_attribute *attr,
            const char *buf, size_t count)
{
 struct b43legacy_wldev *wldev = dev_to_b43legacy_wldev(dev);
 unsigned long flags;
 int err;
 int mode;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 mode = get_integer(buf, count);
 switch (mode) {
 case 0:
  mode = B43legacy_INTERFMODE_NONE;
  break;
 case 1:
  mode = B43legacy_INTERFMODE_NONWLAN;
  break;
 case 2:
  mode = B43legacy_INTERFMODE_MANUALWLAN;
  break;
 case 3:
  mode = B43legacy_INTERFMODE_AUTOWLAN;
  break;
 default:
  return -EINVAL;
 }

 mutex_lock(&wldev->wl->mutex);
 spin_lock_irqsave(&wldev->wl->irq_lock, flags);

 err = b43legacy_radio_set_interference_mitigation(wldev, mode);
 if (err)
  b43legacyerr(wldev->wl, "Interference Mitigation not "
         "supported by device\n");
 spin_unlock_irqrestore(&wldev->wl->irq_lock, flags);
 mutex_unlock(&wldev->wl->mutex);

 return err ? err : count;
}
