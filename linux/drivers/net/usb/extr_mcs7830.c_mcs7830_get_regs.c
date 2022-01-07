
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int len; int version; } ;


 int mcs7830_get_reg (struct usbnet*,int ,int ,void*) ;
 int mcs7830_get_rev (struct usbnet*) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mcs7830_get_regs(struct net_device *net, struct ethtool_regs *regs, void *data)
{
 struct usbnet *dev = netdev_priv(net);

 regs->version = mcs7830_get_rev(dev);
 mcs7830_get_reg(dev, 0, regs->len, data);
}
