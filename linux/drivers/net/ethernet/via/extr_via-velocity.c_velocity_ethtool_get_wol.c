
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int wol_opts; int wol_passwd; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; int sopass; } ;


 int VELOCITY_WOL_ARP ;
 int VELOCITY_WOL_UCAST ;
 int WAKE_ARP ;
 int WAKE_MAGIC ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int memcpy (int *,int ,int) ;
 struct velocity_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void velocity_ethtool_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct velocity_info *vptr = netdev_priv(dev);
 wol->supported = WAKE_PHY | WAKE_MAGIC | WAKE_UCAST | WAKE_ARP;
 wol->wolopts |= WAKE_MAGIC;




 if (vptr->wol_opts & VELOCITY_WOL_UCAST)
  wol->wolopts |= WAKE_UCAST;
 if (vptr->wol_opts & VELOCITY_WOL_ARP)
  wol->wolopts |= WAKE_ARP;
 memcpy(&wol->sopass, vptr->wol_passwd, 6);
}
