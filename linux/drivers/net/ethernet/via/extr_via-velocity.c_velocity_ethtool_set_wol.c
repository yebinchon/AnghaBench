
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int wol_passwd; int flags; int wol_opts; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int sopass; } ;


 int EFAULT ;
 int VELOCITY_FLAGS_WOL_ENABLED ;
 int VELOCITY_WOL_ARP ;
 int VELOCITY_WOL_MAGIC ;
 int VELOCITY_WOL_UCAST ;
 int WAKE_ARP ;
 int WAKE_MAGIC ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int memcpy (int ,int ,int) ;
 struct velocity_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int velocity_ethtool_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct velocity_info *vptr = netdev_priv(dev);

 if (!(wol->wolopts & (WAKE_PHY | WAKE_MAGIC | WAKE_UCAST | WAKE_ARP)))
  return -EFAULT;
 vptr->wol_opts = VELOCITY_WOL_MAGIC;
 if (wol->wolopts & WAKE_MAGIC) {
  vptr->wol_opts |= VELOCITY_WOL_MAGIC;
  vptr->flags |= VELOCITY_FLAGS_WOL_ENABLED;
 }
 if (wol->wolopts & WAKE_UCAST) {
  vptr->wol_opts |= VELOCITY_WOL_UCAST;
  vptr->flags |= VELOCITY_FLAGS_WOL_ENABLED;
 }
 if (wol->wolopts & WAKE_ARP) {
  vptr->wol_opts |= VELOCITY_WOL_ARP;
  vptr->flags |= VELOCITY_FLAGS_WOL_ENABLED;
 }
 memcpy(vptr->wol_passwd, wol->sopass, 6);
 return 0;
}
