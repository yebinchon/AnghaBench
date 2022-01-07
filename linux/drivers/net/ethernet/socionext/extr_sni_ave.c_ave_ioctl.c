
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;


 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int ave_ioctl(struct net_device *ndev, struct ifreq *ifr, int cmd)
{
 return phy_mii_ioctl(ndev->phydev, ifr, cmd);
}
