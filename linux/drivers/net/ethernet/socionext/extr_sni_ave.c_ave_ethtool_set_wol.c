
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; int phydev; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EOPNOTSUPP ;
 int WAKE_ARP ;
 int WAKE_MAGICSECURE ;
 int device_set_wakeup_enable (int *,int) ;
 int phy_ethtool_set_wol (int ,struct ethtool_wolinfo*) ;

__attribute__((used)) static int ave_ethtool_set_wol(struct net_device *ndev,
          struct ethtool_wolinfo *wol)
{
 int ret;

 if (!ndev->phydev ||
     (wol->wolopts & (WAKE_ARP | WAKE_MAGICSECURE)))
  return -EOPNOTSUPP;

 ret = phy_ethtool_set_wol(ndev->phydev, wol);
 if (!ret)
  device_set_wakeup_enable(&ndev->dev, !!wol->wolopts);

 return ret;
}
