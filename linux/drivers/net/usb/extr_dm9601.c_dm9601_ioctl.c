
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int mii; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dm9601_ioctl(struct net_device *net, struct ifreq *rq, int cmd)
{
 struct usbnet *dev = netdev_priv(net);

 return generic_mii_ioctl(&dev->mii, if_mii(rq), cmd, ((void*)0));
}
