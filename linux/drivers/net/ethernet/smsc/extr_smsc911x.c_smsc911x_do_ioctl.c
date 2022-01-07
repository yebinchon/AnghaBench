
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int smsc911x_do_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 if (!netif_running(dev) || !dev->phydev)
  return -EINVAL;

 return phy_mii_ioctl(dev->phydev, ifr, cmd);
}
