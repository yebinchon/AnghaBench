
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_eee {int dummy; } ;
struct tg3 {int phy_flags; struct ethtool_eee eee; int dev; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 int TG3_PHYFLG_EEE_CAP ;
 struct tg3* netdev_priv (struct net_device*) ;
 int netdev_warn (int ,char*) ;

__attribute__((used)) static int tg3_get_eee(struct net_device *dev, struct ethtool_eee *edata)
{
 struct tg3 *tp = netdev_priv(dev);

 if (!(tp->phy_flags & TG3_PHYFLG_EEE_CAP)) {
  netdev_warn(tp->dev,
       "Board does not support EEE!\n");
  return -EOPNOTSUPP;
 }

 *edata = tp->eee;
 return 0;
}
