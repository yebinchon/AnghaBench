
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct macb {TYPE_1__* ptp_info; } ;
struct ifreq {int dummy; } ;
struct TYPE_2__ {int (* set_hwtst ) (struct net_device*,struct ifreq*,int) ;int (* get_hwtst ) (struct net_device*,struct ifreq*) ;} ;


 int EINVAL ;
 int ENODEV ;


 struct macb* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (struct phy_device*,struct ifreq*,int) ;
 int stub1 (struct net_device*,struct ifreq*,int) ;
 int stub2 (struct net_device*,struct ifreq*) ;

__attribute__((used)) static int macb_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct phy_device *phydev = dev->phydev;
 struct macb *bp = netdev_priv(dev);

 if (!netif_running(dev))
  return -EINVAL;

 if (!phydev)
  return -ENODEV;

 if (!bp->ptp_info)
  return phy_mii_ioctl(phydev, rq, cmd);

 switch (cmd) {
 case 128:
  return bp->ptp_info->set_hwtst(dev, rq, cmd);
 case 129:
  return bp->ptp_info->get_hwtst(dev, rq);
 default:
  return phy_mii_ioctl(phydev, rq, cmd);
 }
}
