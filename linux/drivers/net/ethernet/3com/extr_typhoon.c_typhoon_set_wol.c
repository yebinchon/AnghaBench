
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typhoon {int wol_events; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EINVAL ;
 int TYPHOON_WAKE_LINK_EVENT ;
 int TYPHOON_WAKE_MAGIC_PKT ;
 int WAKE_MAGIC ;
 int WAKE_PHY ;
 struct typhoon* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
typhoon_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct typhoon *tp = netdev_priv(dev);

 if(wol->wolopts & ~(WAKE_PHY | WAKE_MAGIC))
  return -EINVAL;

 tp->wol_events = 0;
 if(wol->wolopts & WAKE_PHY)
  tp->wol_events |= TYPHOON_WAKE_LINK_EVENT;
 if(wol->wolopts & WAKE_MAGIC)
  tp->wol_events |= TYPHOON_WAKE_MAGIC_PKT;

 return 0;
}
