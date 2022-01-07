
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {void* payload; void* speed; void* width; } ;
struct TYPE_3__ {void* payload; void* speed; void* width; } ;
struct fm10k_hw {TYPE_2__ bus; TYPE_1__ bus_caps; } ;
typedef int s32 ;


 int FM10K_PCIE_DEV_CAP ;
 int FM10K_PCIE_DEV_CAP_PAYLOAD ;



 int FM10K_PCIE_DEV_CTRL ;
 int FM10K_PCIE_DEV_CTRL_PAYLOAD ;



 int FM10K_PCIE_LINK_CAP ;
 int FM10K_PCIE_LINK_SPEED ;



 int FM10K_PCIE_LINK_STATUS ;
 int FM10K_PCIE_LINK_WIDTH ;




 void* fm10k_bus_payload_128 ;
 void* fm10k_bus_payload_256 ;
 void* fm10k_bus_payload_512 ;
 void* fm10k_bus_payload_unknown ;
 void* fm10k_bus_speed_2500 ;
 void* fm10k_bus_speed_5000 ;
 void* fm10k_bus_speed_8000 ;
 void* fm10k_bus_speed_unknown ;
 void* fm10k_bus_width_pcie_x1 ;
 void* fm10k_bus_width_pcie_x2 ;
 void* fm10k_bus_width_pcie_x4 ;
 void* fm10k_bus_width_pcie_x8 ;
 void* fm10k_bus_width_unknown ;
 int fm10k_read_pci_cfg_word (struct fm10k_hw*,int ) ;

s32 fm10k_get_bus_info_generic(struct fm10k_hw *hw)
{
 u16 link_cap, link_status, device_cap, device_control;


 link_cap = fm10k_read_pci_cfg_word(hw, FM10K_PCIE_LINK_CAP);

 switch (link_cap & FM10K_PCIE_LINK_WIDTH) {
 case 131:
  hw->bus_caps.width = fm10k_bus_width_pcie_x1;
  break;
 case 130:
  hw->bus_caps.width = fm10k_bus_width_pcie_x2;
  break;
 case 129:
  hw->bus_caps.width = fm10k_bus_width_pcie_x4;
  break;
 case 128:
  hw->bus_caps.width = fm10k_bus_width_pcie_x8;
  break;
 default:
  hw->bus_caps.width = fm10k_bus_width_unknown;
  break;
 }

 switch (link_cap & FM10K_PCIE_LINK_SPEED) {
 case 134:
  hw->bus_caps.speed = fm10k_bus_speed_2500;
  break;
 case 133:
  hw->bus_caps.speed = fm10k_bus_speed_5000;
  break;
 case 132:
  hw->bus_caps.speed = fm10k_bus_speed_8000;
  break;
 default:
  hw->bus_caps.speed = fm10k_bus_speed_unknown;
  break;
 }


 device_cap = fm10k_read_pci_cfg_word(hw, FM10K_PCIE_DEV_CAP);

 switch (device_cap & FM10K_PCIE_DEV_CAP_PAYLOAD) {
 case 140:
  hw->bus_caps.payload = fm10k_bus_payload_128;
  break;
 case 139:
  hw->bus_caps.payload = fm10k_bus_payload_256;
  break;
 case 138:
  hw->bus_caps.payload = fm10k_bus_payload_512;
  break;
 default:
  hw->bus_caps.payload = fm10k_bus_payload_unknown;
  break;
 }


 link_status = fm10k_read_pci_cfg_word(hw, FM10K_PCIE_LINK_STATUS);

 switch (link_status & FM10K_PCIE_LINK_WIDTH) {
 case 131:
  hw->bus.width = fm10k_bus_width_pcie_x1;
  break;
 case 130:
  hw->bus.width = fm10k_bus_width_pcie_x2;
  break;
 case 129:
  hw->bus.width = fm10k_bus_width_pcie_x4;
  break;
 case 128:
  hw->bus.width = fm10k_bus_width_pcie_x8;
  break;
 default:
  hw->bus.width = fm10k_bus_width_unknown;
  break;
 }

 switch (link_status & FM10K_PCIE_LINK_SPEED) {
 case 134:
  hw->bus.speed = fm10k_bus_speed_2500;
  break;
 case 133:
  hw->bus.speed = fm10k_bus_speed_5000;
  break;
 case 132:
  hw->bus.speed = fm10k_bus_speed_8000;
  break;
 default:
  hw->bus.speed = fm10k_bus_speed_unknown;
  break;
 }


 device_control = fm10k_read_pci_cfg_word(hw, FM10K_PCIE_DEV_CTRL);

 switch (device_control & FM10K_PCIE_DEV_CTRL_PAYLOAD) {
 case 137:
  hw->bus.payload = fm10k_bus_payload_128;
  break;
 case 136:
  hw->bus.payload = fm10k_bus_payload_256;
  break;
 case 135:
  hw->bus.payload = fm10k_bus_payload_512;
  break;
 default:
  hw->bus.payload = fm10k_bus_payload_unknown;
  break;
 }

 return 0;
}
