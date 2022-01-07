
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int EOPNOTSUPP ;

__attribute__((used)) static s32 ixgbevf_hv_update_mc_addr_list_vf(struct ixgbe_hw *hw,
          struct net_device *netdev)
{
 return -EOPNOTSUPP;
}
