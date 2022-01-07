
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int pg_tcs; } ;
struct TYPE_4__ {TYPE_1__ num_tcs; } ;
struct ixgbe_adapter {int dcbx_cap; int flags; TYPE_2__ dcb_cfg; } ;


 int DCB_CAP_DCBX_VER_CEE ;
 int IXGBE_FLAG_DCB_ENABLED ;
 int ixgbe_setup_tc (struct net_device*,int ) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u8 ixgbe_dcbnl_set_state(struct net_device *netdev, u8 state)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);


 if (!(adapter->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
  return 1;


 if (!state == !(adapter->flags & IXGBE_FLAG_DCB_ENABLED))
  return 0;

 return !!ixgbe_setup_tc(netdev,
    state ? adapter->dcb_cfg.num_tcs.pg_tcs : 0);
}
