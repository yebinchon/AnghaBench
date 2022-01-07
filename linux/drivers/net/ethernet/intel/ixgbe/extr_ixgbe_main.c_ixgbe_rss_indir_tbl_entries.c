
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; TYPE_2__ hw; } ;


 int IXGBE_FLAG_SRIOV_ENABLED ;
 scalar_t__ ixgbe_mac_X550 ;

u32 ixgbe_rss_indir_tbl_entries(struct ixgbe_adapter *adapter)
{
 if (adapter->hw.mac.type < ixgbe_mac_X550)
  return 128;
 else if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
  return 64;
 else
  return 512;
}
