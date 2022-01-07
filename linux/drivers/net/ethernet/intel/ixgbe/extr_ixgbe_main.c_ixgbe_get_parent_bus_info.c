
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int speed; int width; int type; } ;
struct ixgbe_hw {TYPE_1__ bus; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
typedef int s32 ;


 int ixgbe_bus_type_pci_express ;
 int ixgbe_convert_bus_speed (int ) ;
 int ixgbe_convert_bus_width (int ) ;
 int ixgbe_read_pci_cfg_word_parent (struct ixgbe_adapter*,int,int *) ;

__attribute__((used)) static s32 ixgbe_get_parent_bus_info(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u16 link_status = 0;
 int err;

 hw->bus.type = ixgbe_bus_type_pci_express;




 err = ixgbe_read_pci_cfg_word_parent(adapter, 18, &link_status);


 if (err)
  return err;

 hw->bus.width = ixgbe_convert_bus_width(link_status);
 hw->bus.speed = ixgbe_convert_bus_speed(link_status);

 return 0;
}
