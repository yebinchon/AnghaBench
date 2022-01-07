
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ** bw_percentage; } ;
struct ixgbe_adapter {TYPE_1__ temp_dcb_cfg; } ;


 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbe_dcbnl_set_pg_bwg_cfg_tx(struct net_device *netdev, int bwg_id,
       u8 bw_pct)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 adapter->temp_dcb_cfg.bw_percentage[0][bwg_id] = bw_pct;
}
