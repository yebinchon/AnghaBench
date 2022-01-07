
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {int mii_if; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct sis190_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int sis190_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct sis190_private *tp = netdev_priv(dev);

 return !netif_running(dev) ? -EINVAL :
  generic_mii_ioctl(&tp->mii_if, if_mii(ifr), cmd, ((void*)0));
}
