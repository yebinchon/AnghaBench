
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (struct phy_device*,struct ifreq*,int) ;

__attribute__((used)) static int dnet_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct phy_device *phydev = dev->phydev;

 if (!netif_running(dev))
  return -EINVAL;

 if (!phydev)
  return -ENODEV;

 return phy_mii_ioctl(phydev, rq, cmd);
}
