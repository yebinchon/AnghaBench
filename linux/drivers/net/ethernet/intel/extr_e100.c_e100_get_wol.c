
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {scalar_t__ mac; int flags; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {void* wolopts; void* supported; } ;


 void* WAKE_MAGIC ;
 scalar_t__ mac_82558_D101_A4 ;
 struct nic* netdev_priv (struct net_device*) ;
 int wol_magic ;

__attribute__((used)) static void e100_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
 struct nic *nic = netdev_priv(netdev);
 wol->supported = (nic->mac >= mac_82558_D101_A4) ? WAKE_MAGIC : 0;
 wol->wolopts = (nic->flags & wol_magic) ? WAKE_MAGIC : 0;
}
