
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int ag71xx_do_ioctl(struct net_device *ndev, struct ifreq *ifr, int cmd)
{
 if (!ndev->phydev)
  return -EINVAL;

 return phy_mii_ioctl(ndev->phydev, ifr, cmd);
}
