
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int pfc_mode_enable; } ;
struct ixgbe_adapter {TYPE_1__ temp_dcb_cfg; } ;


 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbe_dcbnl_setpfcstate(struct net_device *netdev, u8 state)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 adapter->temp_dcb_cfg.pfc_mode_enable = state;
}
