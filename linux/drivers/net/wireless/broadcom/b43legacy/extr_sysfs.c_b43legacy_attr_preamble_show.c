
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct b43legacy_wldev {TYPE_1__* wl; scalar_t__ short_preamble; } ;
typedef int ssize_t ;
struct TYPE_2__ {int mutex; } ;


 int CAP_NET_ADMIN ;
 int EPERM ;
 int PAGE_SIZE ;
 int capable (int ) ;
 struct b43legacy_wldev* dev_to_b43legacy_wldev (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t b43legacy_attr_preamble_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct b43legacy_wldev *wldev = dev_to_b43legacy_wldev(dev);
 ssize_t count;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 mutex_lock(&wldev->wl->mutex);

 if (wldev->short_preamble)
  count = snprintf(buf, PAGE_SIZE, "1 (Short Preamble"
     " enabled)\n");
 else
  count = snprintf(buf, PAGE_SIZE, "0 (Short Preamble"
     " disabled)\n");

 mutex_unlock(&wldev->wl->mutex);

 return count;
}
