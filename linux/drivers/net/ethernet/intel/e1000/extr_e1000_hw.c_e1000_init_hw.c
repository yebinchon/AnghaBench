
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int mac_type; int pci_cmd_word; scalar_t__ device_id; int bus_type; scalar_t__ dma_fairness; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int CTRL_EXT ;
 scalar_t__ E1000_CTRL_EXT_RO_DIS ;
 scalar_t__ E1000_CTRL_PRIOR ;
 scalar_t__ E1000_DEV_ID_82546GB_QUAD_COPPER ;
 scalar_t__ E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3 ;
 scalar_t__ E1000_MC_TBL_SIZE ;
 scalar_t__ E1000_RCTL_RST ;
 scalar_t__ E1000_TXDCTL_FULL_TX_DESC_WB ;
 scalar_t__ E1000_TXDCTL_WTHRESH ;
 int E1000_WRITE_FLUSH () ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,scalar_t__,int ) ;
 int MTA ;
 int PCI_COMMAND_INVALIDATE ;
 int RCTL ;
 int TXDCTL ;
 int VET ;
 int e1000_82542_rev2_0 ;
 int e1000_82543 ;
 int e1000_82544 ;


 int e1000_bus_type_pcix ;
 int e1000_clear_hw_cntrs (struct e1000_hw*) ;
 int e1000_clear_vfta (struct e1000_hw*) ;
 scalar_t__ e1000_id_led_init (struct e1000_hw*) ;
 int e1000_init_rx_addrs (struct e1000_hw*) ;
 int e1000_pci_clear_mwi (struct e1000_hw*) ;
 int e1000_pci_set_mwi (struct e1000_hw*) ;
 int e1000_pcix_get_mmrbc (struct e1000_hw*) ;
 int e1000_pcix_set_mmrbc (struct e1000_hw*,int) ;
 int e1000_set_media_type (struct e1000_hw*) ;
 scalar_t__ e1000_setup_link (struct e1000_hw*) ;
 int e_dbg (char*) ;
 scalar_t__ er32 (int ) ;
 int ew32 (int ,scalar_t__) ;
 int msleep (int) ;

s32 e1000_init_hw(struct e1000_hw *hw)
{
 u32 ctrl;
 u32 i;
 s32 ret_val;
 u32 mta_size;
 u32 ctrl_ext;


 ret_val = e1000_id_led_init(hw);
 if (ret_val) {
  e_dbg("Error Initializing Identification LED\n");
  return ret_val;
 }


 e1000_set_media_type(hw);


 e_dbg("Initializing the IEEE VLAN\n");
 if (hw->mac_type < 129)
  ew32(VET, 0);
 e1000_clear_vfta(hw);


 if (hw->mac_type == e1000_82542_rev2_0) {
  e_dbg("Disabling MWI on 82542 rev 2.0\n");
  e1000_pci_clear_mwi(hw);
  ew32(RCTL, E1000_RCTL_RST);
  E1000_WRITE_FLUSH();
  msleep(5);
 }




 e1000_init_rx_addrs(hw);


 if (hw->mac_type == e1000_82542_rev2_0) {
  ew32(RCTL, 0);
  E1000_WRITE_FLUSH();
  msleep(1);
  if (hw->pci_cmd_word & PCI_COMMAND_INVALIDATE)
   e1000_pci_set_mwi(hw);
 }


 e_dbg("Zeroing the MTA\n");
 mta_size = E1000_MC_TBL_SIZE;
 for (i = 0; i < mta_size; i++) {
  E1000_WRITE_REG_ARRAY(hw, MTA, i, 0);



  E1000_WRITE_FLUSH();
 }






 if (hw->dma_fairness && hw->mac_type <= e1000_82543) {
  ctrl = er32(CTRL);
  ew32(CTRL, ctrl | E1000_CTRL_PRIOR);
 }

 switch (hw->mac_type) {
 case 129:
 case 128:
  break;
 default:



  if (hw->bus_type == e1000_bus_type_pcix &&
      e1000_pcix_get_mmrbc(hw) > 2048)
   e1000_pcix_set_mmrbc(hw, 2048);
  break;
 }


 ret_val = e1000_setup_link(hw);


 if (hw->mac_type > e1000_82544) {
  ctrl = er32(TXDCTL);
  ctrl =
      (ctrl & ~E1000_TXDCTL_WTHRESH) |
      E1000_TXDCTL_FULL_TX_DESC_WB;
  ew32(TXDCTL, ctrl);
 }






 e1000_clear_hw_cntrs(hw);

 if (hw->device_id == E1000_DEV_ID_82546GB_QUAD_COPPER ||
     hw->device_id == E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3) {
  ctrl_ext = er32(CTRL_EXT);



  ctrl_ext |= E1000_CTRL_EXT_RO_DIS;
  ew32(CTRL_EXT, ctrl_ext);
 }

 return ret_val;
}
