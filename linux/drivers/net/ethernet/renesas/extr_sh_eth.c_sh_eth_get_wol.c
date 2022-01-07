
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_eth_private {scalar_t__ wol_enabled; TYPE_1__* cd; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {void* wolopts; void* supported; } ;
struct TYPE_2__ {scalar_t__ magic; } ;


 void* WAKE_MAGIC ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void sh_eth_get_wol(struct net_device *ndev, struct ethtool_wolinfo *wol)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);

 wol->supported = 0;
 wol->wolopts = 0;

 if (mdp->cd->magic) {
  wol->supported = WAKE_MAGIC;
  wol->wolopts = mdp->wol_enabled ? WAKE_MAGIC : 0;
 }
}
