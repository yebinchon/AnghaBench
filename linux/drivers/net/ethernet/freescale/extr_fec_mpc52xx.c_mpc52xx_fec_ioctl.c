
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct ifreq {int dummy; } ;


 int ENOTSUPP ;
 int phy_mii_ioctl (struct phy_device*,struct ifreq*,int) ;

__attribute__((used)) static int mpc52xx_fec_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct phy_device *phydev = dev->phydev;

 if (!phydev)
  return -ENOTSUPP;

 return phy_mii_ioctl(phydev, rq, cmd);
}
