
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int mii; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int smsc95xx_ioctl(struct net_device *netdev, struct ifreq *rq, int cmd)
{
 struct usbnet *dev = netdev_priv(netdev);

 if (!netif_running(netdev))
  return -EINVAL;

 return generic_mii_ioctl(&dev->mii, if_mii(rq), cmd, ((void*)0));
}
