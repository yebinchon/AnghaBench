
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct emac_adapter {int single_pause_mode; } ;


 int EMAC_PRIV_ENABLE_SINGLE_PAUSE ;
 int emac_reinit_locked (struct emac_adapter*) ;
 struct emac_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int emac_set_priv_flags(struct net_device *netdev, u32 flags)
{
 struct emac_adapter *adpt = netdev_priv(netdev);

 adpt->single_pause_mode = !!(flags & EMAC_PRIV_ENABLE_SINGLE_PAUSE);

 if (netif_running(netdev))
  return emac_reinit_locked(adpt);

 return 0;
}
