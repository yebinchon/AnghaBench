
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgb_hw {int adapter_stopped; int curr_mac_addr; int phy_type; int device_id; } ;


 int CTRL1 ;
 int ENTER () ;
 int IXGB_CTRL1_EE_RST ;
 int IXGB_DELAY_AFTER_EE_RESET ;
 scalar_t__ IXGB_MC_TBL_SIZE ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int ) ;
 int IXGB_WRITE_REG_ARRAY (struct ixgb_hw*,int ,scalar_t__,int ) ;
 int IXGB_WRITE_REG_IO (struct ixgb_hw*,int ,int ) ;
 int MTA ;
 int ixgb_check_for_link (struct ixgb_hw*) ;
 int ixgb_clear_hw_cntrs (struct ixgb_hw*) ;
 int ixgb_clear_vfta (struct ixgb_hw*) ;
 int ixgb_get_bus_info (struct ixgb_hw*) ;
 int ixgb_get_ee_device_id (struct ixgb_hw*) ;
 int ixgb_get_eeprom_data (struct ixgb_hw*) ;
 int ixgb_identify_phy (struct ixgb_hw*) ;
 int ixgb_init_rx_addrs (struct ixgb_hw*) ;
 scalar_t__ ixgb_mac_reset (struct ixgb_hw*) ;
 int ixgb_setup_fc (struct ixgb_hw*) ;
 int mac_addr_valid (int ) ;
 int msleep (int ) ;
 int pr_debug (char*) ;

bool
ixgb_init_hw(struct ixgb_hw *hw)
{
 u32 i;
 u32 ctrl_reg;
 bool status;

 ENTER();






 pr_debug("Issuing a global reset to MAC\n");

 ctrl_reg = ixgb_mac_reset(hw);

 pr_debug("Issuing an EE reset to MAC\n");




 IXGB_WRITE_REG(hw, CTRL1, IXGB_CTRL1_EE_RST);



 msleep(IXGB_DELAY_AFTER_EE_RESET);

 if (!ixgb_get_eeprom_data(hw))
  return 0;


 hw->device_id = ixgb_get_ee_device_id(hw);
 hw->phy_type = ixgb_identify_phy(hw);




 ixgb_init_rx_addrs(hw);





 if (!mac_addr_valid(hw->curr_mac_addr)) {
  pr_debug("MAC address invalid after ixgb_init_rx_addrs\n");
  return(0);
 }


 hw->adapter_stopped = 0;


 ixgb_get_bus_info(hw);


 pr_debug("Zeroing the MTA\n");
 for (i = 0; i < IXGB_MC_TBL_SIZE; i++)
  IXGB_WRITE_REG_ARRAY(hw, MTA, i, 0);


 ixgb_clear_vfta(hw);


 ixgb_clear_hw_cntrs(hw);


 status = ixgb_setup_fc(hw);


 ixgb_check_for_link(hw);

 return status;
}
