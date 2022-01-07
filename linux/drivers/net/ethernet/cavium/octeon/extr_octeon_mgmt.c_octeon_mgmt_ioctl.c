
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;

 int octeon_mgmt_ioctl_hwtstamp (struct net_device*,struct ifreq*,int) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int octeon_mgmt_ioctl(struct net_device *netdev,
        struct ifreq *rq, int cmd)
{
 switch (cmd) {
 case 128:
  return octeon_mgmt_ioctl_hwtstamp(netdev, rq, cmd);
 default:
  if (netdev->phydev)
   return phy_mii_ioctl(netdev->phydev, rq, cmd);
  return -EINVAL;
 }
}
