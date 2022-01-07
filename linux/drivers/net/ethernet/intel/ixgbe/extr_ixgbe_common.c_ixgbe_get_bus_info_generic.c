
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int (* set_lan_id ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int speed; int width; int type; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ bus; } ;
typedef int s32 ;


 int IXGBE_PCI_LINK_STATUS ;
 int ixgbe_bus_type_pci_express ;
 int ixgbe_convert_bus_speed (int ) ;
 int ixgbe_convert_bus_width (int ) ;
 int ixgbe_read_pci_cfg_word (struct ixgbe_hw*,int ) ;
 int stub1 (struct ixgbe_hw*) ;

s32 ixgbe_get_bus_info_generic(struct ixgbe_hw *hw)
{
 u16 link_status;

 hw->bus.type = ixgbe_bus_type_pci_express;


 link_status = ixgbe_read_pci_cfg_word(hw, IXGBE_PCI_LINK_STATUS);

 hw->bus.width = ixgbe_convert_bus_width(link_status);
 hw->bus.speed = ixgbe_convert_bus_speed(link_status);

 hw->mac.ops.set_lan_id(hw);

 return 0;
}
