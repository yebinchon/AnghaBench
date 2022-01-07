
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typhoon {int wol_events; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; int sopass; } ;


 int TYPHOON_WAKE_LINK_EVENT ;
 int TYPHOON_WAKE_MAGIC_PKT ;
 int WAKE_MAGIC ;
 int WAKE_PHY ;
 int memset (int *,int ,int) ;
 struct typhoon* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
typhoon_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct typhoon *tp = netdev_priv(dev);

 wol->supported = WAKE_PHY | WAKE_MAGIC;
 wol->wolopts = 0;
 if(tp->wol_events & TYPHOON_WAKE_LINK_EVENT)
  wol->wolopts |= WAKE_PHY;
 if(tp->wol_events & TYPHOON_WAKE_MAGIC_PKT)
  wol->wolopts |= WAKE_MAGIC;
 memset(&wol->sopass, 0, sizeof(wol->sopass));
}
