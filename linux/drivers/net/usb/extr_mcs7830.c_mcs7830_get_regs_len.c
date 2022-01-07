
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;


 int mcs7830_get_rev (struct usbnet*) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mcs7830_get_regs_len(struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);

 switch (mcs7830_get_rev(dev)) {
 case 1:
  return 21;
 case 2:
  return 32;
 }
 return 0;
}
