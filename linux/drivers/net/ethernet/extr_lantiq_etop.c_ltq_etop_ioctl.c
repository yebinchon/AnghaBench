
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;


 int phy_mii_ioctl (int ,struct ifreq*,int) ;

__attribute__((used)) static int
ltq_etop_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{

 return phy_mii_ioctl(dev->phydev, rq, cmd);
}
