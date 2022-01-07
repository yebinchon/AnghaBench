
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ (* identify ) (struct ixgbe_hw*) ;int * reset; int * write_reg; int * read_reg; int * setup_link; int handle_lasi; int enter_lplu; int setup_internal_link; } ;
struct ixgbe_phy_info {scalar_t__ sfp_type; int type; int nw_mng_if_sel; TYPE_3__ ops; int phy_semaphore_mask; } ;
struct TYPE_4__ {scalar_t__ (* get_media_type ) (struct ixgbe_hw*) ;int (* set_lan_id ) (struct ixgbe_hw*) ;} ;
struct TYPE_5__ {int type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; struct ixgbe_phy_info phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_PHY_ADDR_INVALID ;
 scalar_t__ IXGBE_ERR_SFP_NOT_SUPPORTED ;
 int IXGBE_FUSES0_GROUP (int ) ;
 int IXGBE_FUSES0_REV_MASK ;
 int IXGBE_GSSR_SHARED_I2C_SM ;
 int IXGBE_NW_MNG_IF_SEL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int ixgbe_enter_lplu_t_x550em ;
 int ixgbe_handle_lasi_ext_t_x550em ;
 int ixgbe_init_mac_link_ops_X550em (struct ixgbe_hw*) ;
 int ixgbe_mac_X550EM_x ;
 scalar_t__ ixgbe_media_type_fiber ;







 int ixgbe_read_mng_if_sel_x550em (struct ixgbe_hw*) ;
 void* ixgbe_read_phy_reg_x550em ;
 int * ixgbe_reset_phy_fw ;
 int * ixgbe_reset_phy_t_X550em ;
 int * ixgbe_setup_fw_link ;
 int ixgbe_setup_internal_phy_t_x550em ;
 int * ixgbe_setup_kr_x550em ;
 int ixgbe_setup_mux_ctl (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_sfp_type_unknown ;
 void* ixgbe_write_phy_reg_x550em ;
 int stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*) ;
 scalar_t__ stub3 (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_init_phy_ops_X550em(struct ixgbe_hw *hw)
{
 struct ixgbe_phy_info *phy = &hw->phy;
 s32 ret_val;

 hw->mac.ops.set_lan_id(hw);

 ixgbe_read_mng_if_sel_x550em(hw);

 if (hw->mac.ops.get_media_type(hw) == ixgbe_media_type_fiber) {
  phy->phy_semaphore_mask = IXGBE_GSSR_SHARED_I2C_SM;
  ixgbe_setup_mux_ctl(hw);
 }


 ret_val = phy->ops.identify(hw);
 if (ret_val == IXGBE_ERR_SFP_NOT_SUPPORTED ||
     ret_val == IXGBE_ERR_PHY_ADDR_INVALID)
  return ret_val;


 ixgbe_init_mac_link_ops_X550em(hw);
 if (phy->sfp_type != ixgbe_sfp_type_unknown)
  phy->ops.reset = ((void*)0);


 switch (hw->phy.type) {
 case 129:
  phy->ops.setup_link = ((void*)0);
  phy->ops.read_reg = ixgbe_read_phy_reg_x550em;
  phy->ops.write_reg = ixgbe_write_phy_reg_x550em;
  break;
 case 130:
  phy->ops.setup_link = ixgbe_setup_kr_x550em;
  phy->ops.read_reg = ixgbe_read_phy_reg_x550em;
  phy->ops.write_reg = ixgbe_write_phy_reg_x550em;
  break;
 case 128:

  phy->ops.setup_link = ((void*)0);
  phy->ops.read_reg = ixgbe_read_phy_reg_x550em;
  phy->ops.write_reg = ixgbe_write_phy_reg_x550em;
  break;
 case 131:



  phy->nw_mng_if_sel = IXGBE_READ_REG(hw, IXGBE_NW_MNG_IF_SEL);




  phy->ops.setup_internal_link =
           ixgbe_setup_internal_phy_t_x550em;


  if (hw->mac.type == ixgbe_mac_X550EM_x &&
      !(IXGBE_READ_REG(hw, IXGBE_FUSES0_GROUP(0)) &
        IXGBE_FUSES0_REV_MASK))
   phy->ops.enter_lplu = ixgbe_enter_lplu_t_x550em;

  phy->ops.handle_lasi = ixgbe_handle_lasi_ext_t_x550em;
  phy->ops.reset = ixgbe_reset_phy_t_X550em;
  break;
 case 132:
  phy->ops.setup_link = ((void*)0);
  break;
 case 133:
  phy->ops.setup_link = ixgbe_setup_fw_link;
  phy->ops.reset = ixgbe_reset_phy_fw;
  break;
 case 134:
  phy->ops.setup_link = ((void*)0);
  phy->ops.read_reg = ((void*)0);
  phy->ops.write_reg = ((void*)0);
  phy->ops.reset = ((void*)0);
  break;
 default:
  break;
 }

 return ret_val;
}
