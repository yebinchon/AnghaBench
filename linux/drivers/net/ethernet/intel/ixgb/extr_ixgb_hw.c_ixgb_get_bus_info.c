
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; int width; void* speed; } ;
struct ixgb_hw {TYPE_1__ bus; } ;


 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_STATUS_BUS64 ;
 int IXGB_STATUS_PCIX_MODE ;



 int IXGB_STATUS_PCIX_SPD_MASK ;
 int IXGB_STATUS_PCI_SPD ;
 int STATUS ;
 void* ixgb_bus_speed_100 ;
 void* ixgb_bus_speed_133 ;
 void* ixgb_bus_speed_33 ;
 void* ixgb_bus_speed_66 ;
 void* ixgb_bus_speed_reserved ;
 scalar_t__ ixgb_bus_type_pci ;
 scalar_t__ ixgb_bus_type_pcix ;
 int ixgb_bus_width_32 ;
 int ixgb_bus_width_64 ;

__attribute__((used)) static void
ixgb_get_bus_info(struct ixgb_hw *hw)
{
 u32 status_reg;

 status_reg = IXGB_READ_REG(hw, STATUS);

 hw->bus.type = (status_reg & IXGB_STATUS_PCIX_MODE) ?
  ixgb_bus_type_pcix : ixgb_bus_type_pci;

 if (hw->bus.type == ixgb_bus_type_pci) {
  hw->bus.speed = (status_reg & IXGB_STATUS_PCI_SPD) ?
   ixgb_bus_speed_66 : ixgb_bus_speed_33;
 } else {
  switch (status_reg & IXGB_STATUS_PCIX_SPD_MASK) {
  case 128:
   hw->bus.speed = ixgb_bus_speed_66;
   break;
  case 130:
   hw->bus.speed = ixgb_bus_speed_100;
   break;
  case 129:
   hw->bus.speed = ixgb_bus_speed_133;
   break;
  default:
   hw->bus.speed = ixgb_bus_speed_reserved;
   break;
  }
 }

 hw->bus.width = (status_reg & IXGB_STATUS_BUS64) ?
  ixgb_bus_width_64 : ixgb_bus_width_32;
}
