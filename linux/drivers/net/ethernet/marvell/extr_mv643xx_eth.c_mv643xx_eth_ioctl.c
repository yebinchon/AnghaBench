
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;


 int ENOTSUPP ;
 int mv643xx_eth_adjust_link (struct net_device*) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int mv643xx_eth_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 int ret;

 if (!dev->phydev)
  return -ENOTSUPP;

 ret = phy_mii_ioctl(dev->phydev, ifr, cmd);
 if (!ret)
  mv643xx_eth_adjust_link(dev);
 return ret;
}
