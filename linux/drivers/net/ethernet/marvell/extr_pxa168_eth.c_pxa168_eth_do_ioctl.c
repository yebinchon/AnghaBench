
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ phydev; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;
 int phy_mii_ioctl (scalar_t__,struct ifreq*,int) ;

__attribute__((used)) static int pxa168_eth_do_ioctl(struct net_device *dev, struct ifreq *ifr,
          int cmd)
{
 if (dev->phydev)
  return phy_mii_ioctl(dev->phydev, ifr, cmd);

 return -EOPNOTSUPP;
}
