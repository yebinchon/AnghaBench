
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct igc_adapter {unsigned int flags; } ;


 unsigned int IGC_FLAG_RX_LEGACY ;
 int IGC_PRIV_FLAGS_LEGACY_RX ;
 int igc_reinit_locked (struct igc_adapter*) ;
 struct igc_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int igc_set_priv_flags(struct net_device *netdev, u32 priv_flags)
{
 struct igc_adapter *adapter = netdev_priv(netdev);
 unsigned int flags = adapter->flags;

 flags &= ~IGC_FLAG_RX_LEGACY;
 if (priv_flags & IGC_PRIV_FLAGS_LEGACY_RX)
  flags |= IGC_FLAG_RX_LEGACY;

 if (flags != adapter->flags) {
  adapter->flags = flags;


  if (netif_running(netdev))
   igc_reinit_locked(adapter);
 }

 return 0;
}
