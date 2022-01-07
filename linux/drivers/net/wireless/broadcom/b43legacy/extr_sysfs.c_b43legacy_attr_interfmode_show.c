
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int interfmode; } ;
struct b43legacy_wldev {TYPE_1__* wl; TYPE_2__ phy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int mutex; } ;





 int B43legacy_WARN_ON (int) ;
 int CAP_NET_ADMIN ;
 int EPERM ;
 int PAGE_SIZE ;
 int capable (int ) ;
 struct b43legacy_wldev* dev_to_b43legacy_wldev (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t b43legacy_attr_interfmode_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct b43legacy_wldev *wldev = dev_to_b43legacy_wldev(dev);
 ssize_t count = 0;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 mutex_lock(&wldev->wl->mutex);

 switch (wldev->phy.interfmode) {
 case 129:
  count = snprintf(buf, PAGE_SIZE, "0 (No Interference"
     " Mitigation)\n");
  break;
 case 128:
  count = snprintf(buf, PAGE_SIZE, "1 (Non-WLAN Interference"
     " Mitigation)\n");
  break;
 case 130:
  count = snprintf(buf, PAGE_SIZE, "2 (WLAN Interference"
     " Mitigation)\n");
  break;
 default:
  B43legacy_WARN_ON(1);
 }

 mutex_unlock(&wldev->wl->mutex);

 return count;
}
