
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;


 int ENXIO ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int ftgmac100_do_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 if (!netdev->phydev)
  return -ENXIO;

 return phy_mii_ioctl(netdev->phydev, ifr, cmd);
}
