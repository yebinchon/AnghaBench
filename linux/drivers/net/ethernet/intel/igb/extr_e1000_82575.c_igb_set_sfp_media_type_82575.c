
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct e1000_sfp_flags {scalar_t__ e1000_base_t; scalar_t__ e100_base_fx; scalar_t__ e1000_base_sx; scalar_t__ e1000_base_lx; } ;
struct TYPE_4__ {void* media_type; } ;
struct e1000_dev_spec_82575 {int module_plugged; int sgmii_active; struct e1000_sfp_flags eth_flags; } ;
struct TYPE_3__ {struct e1000_dev_spec_82575 _82575; } ;
struct e1000_hw {TYPE_2__ phy; TYPE_1__ dev_spec; } ;
typedef scalar_t__ s32 ;


 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_SDP3_DATA ;
 int E1000_CTRL_I2C_ENA ;
 scalar_t__ E1000_ERR_CONFIG ;
 int E1000_I2CCMD_SFP_DATA_ADDR (int ) ;
 int E1000_SFF_ETH_FLAGS_OFFSET ;
 int E1000_SFF_IDENTIFIER_OFFSET ;
 scalar_t__ E1000_SFF_IDENTIFIER_SFF ;
 scalar_t__ E1000_SFF_IDENTIFIER_SFP ;
 void* e1000_media_type_copper ;
 void* e1000_media_type_internal_serdes ;
 void* e1000_media_type_unknown ;
 int hw_dbg (char*) ;
 scalar_t__ igb_read_sfp_data_byte (struct e1000_hw*,int ,scalar_t__*) ;
 int msleep (int) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static s32 igb_set_sfp_media_type_82575(struct e1000_hw *hw)
{
 s32 ret_val = E1000_ERR_CONFIG;
 u32 ctrl_ext = 0;
 struct e1000_dev_spec_82575 *dev_spec = &hw->dev_spec._82575;
 struct e1000_sfp_flags *eth_flags = &dev_spec->eth_flags;
 u8 tranceiver_type = 0;
 s32 timeout = 3;


 ctrl_ext = rd32(E1000_CTRL_EXT);
 ctrl_ext &= ~E1000_CTRL_EXT_SDP3_DATA;
 wr32(E1000_CTRL_EXT, ctrl_ext | E1000_CTRL_I2C_ENA);

 wrfl();


 while (timeout) {
  ret_val = igb_read_sfp_data_byte(hw,
   E1000_I2CCMD_SFP_DATA_ADDR(E1000_SFF_IDENTIFIER_OFFSET),
   &tranceiver_type);
  if (ret_val == 0)
   break;
  msleep(100);
  timeout--;
 }
 if (ret_val != 0)
  goto out;

 ret_val = igb_read_sfp_data_byte(hw,
   E1000_I2CCMD_SFP_DATA_ADDR(E1000_SFF_ETH_FLAGS_OFFSET),
   (u8 *)eth_flags);
 if (ret_val != 0)
  goto out;


 if ((tranceiver_type == E1000_SFF_IDENTIFIER_SFP) ||
     (tranceiver_type == E1000_SFF_IDENTIFIER_SFF)) {
  dev_spec->module_plugged = 1;
  if (eth_flags->e1000_base_lx || eth_flags->e1000_base_sx) {
   hw->phy.media_type = e1000_media_type_internal_serdes;
  } else if (eth_flags->e100_base_fx) {
   dev_spec->sgmii_active = 1;
   hw->phy.media_type = e1000_media_type_internal_serdes;
  } else if (eth_flags->e1000_base_t) {
   dev_spec->sgmii_active = 1;
   hw->phy.media_type = e1000_media_type_copper;
  } else {
   hw->phy.media_type = e1000_media_type_unknown;
   hw_dbg("PHY module has not been recognized\n");
   goto out;
  }
 } else {
  hw->phy.media_type = e1000_media_type_unknown;
 }
 ret_val = 0;
out:

 wr32(E1000_CTRL_EXT, ctrl_ext);
 return ret_val;
}
