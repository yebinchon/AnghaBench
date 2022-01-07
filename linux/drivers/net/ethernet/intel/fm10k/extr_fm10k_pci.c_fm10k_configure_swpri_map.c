
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {int flags; struct fm10k_hw hw; struct net_device* netdev; } ;


 int FM10K_FLAG_SWPRI_CONFIG ;
 int FM10K_SWPRI_MAP (int) ;
 int FM10K_SWPRI_MAX ;
 int clear_bit (int ,int ) ;
 scalar_t__ fm10k_mac_pf ;
 int fm10k_write_reg (struct fm10k_hw*,int ,int ) ;
 int netdev_get_prio_tc_map (struct net_device*,int) ;

__attribute__((used)) static void fm10k_configure_swpri_map(struct fm10k_intfc *interface)
{
 struct net_device *netdev = interface->netdev;
 struct fm10k_hw *hw = &interface->hw;
 int i;


 clear_bit(FM10K_FLAG_SWPRI_CONFIG, interface->flags);


 if (hw->mac.type != fm10k_mac_pf)
  return;


 for (i = 0; i < FM10K_SWPRI_MAX; i++)
  fm10k_write_reg(hw, FM10K_SWPRI_MAP(i),
    netdev_get_prio_tc_map(netdev, i));
}
