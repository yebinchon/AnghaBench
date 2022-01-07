
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int intf; int control; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; scalar_t__ supported; } ;


 scalar_t__ WAKE_ANY ;
 int __rtl_get_wol (struct r8152*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int rtl_can_wakeup (struct r8152*) ;
 scalar_t__ usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static void rtl8152_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct r8152 *tp = netdev_priv(dev);

 if (usb_autopm_get_interface(tp->intf) < 0)
  return;

 if (!rtl_can_wakeup(tp)) {
  wol->supported = 0;
  wol->wolopts = 0;
 } else {
  mutex_lock(&tp->control);
  wol->supported = WAKE_ANY;
  wol->wolopts = __rtl_get_wol(tp);
  mutex_unlock(&tp->control);
 }

 usb_autopm_put_interface(tp->intf);
}
