
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int et131x_ioctl(struct net_device *netdev, struct ifreq *reqbuf,
   int cmd)
{
 if (!netdev->phydev)
  return -EINVAL;

 return phy_mii_ioctl(netdev->phydev, reqbuf, cmd);
}
