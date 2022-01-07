
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_2__ hw; } ;


 scalar_t__ ixgbe_mac_X550 ;

__attribute__((used)) static int ixgbe_rss_indir_tbl_max(struct ixgbe_adapter *adapter)
{
 if (adapter->hw.mac.type < ixgbe_mac_X550)
  return 16;
 else
  return 64;
}
