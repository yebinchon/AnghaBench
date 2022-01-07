
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct e1000_phy_info {scalar_t__ media_type; scalar_t__ id; TYPE_3__ ops; } ;
struct TYPE_4__ {int eee_disable; } ;
struct TYPE_5__ {TYPE_1__ _82575; } ;
struct e1000_hw {TYPE_2__ dev_spec; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int E1000_EEE_ADV_1000_SUPPORTED ;
 int E1000_EEE_ADV_100_SUPPORTED ;
 int E1000_EEE_ADV_ADDR_I354 ;
 int E1000_EEE_ADV_DEV_I354 ;
 int E1000_M88E1543_EEE_CTRL_1 ;
 int E1000_M88E1543_EEE_CTRL_1_MS ;
 int E1000_M88E1543_PAGE_ADDR ;
 scalar_t__ M88E1512_E_PHY_ID ;
 scalar_t__ M88E1543_E_PHY_ID ;
 scalar_t__ e1000_media_type_copper ;
 scalar_t__ igb_read_xmdio_reg (struct e1000_hw*,int ,int ,int*) ;
 scalar_t__ igb_write_xmdio_reg (struct e1000_hw*,int ,int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int) ;

s32 igb_set_eee_i354(struct e1000_hw *hw, bool adv1G, bool adv100M)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val = 0;
 u16 phy_data;

 if ((hw->phy.media_type != e1000_media_type_copper) ||
     ((phy->id != M88E1543_E_PHY_ID) &&
      (phy->id != M88E1512_E_PHY_ID)))
  goto out;

 if (!hw->dev_spec._82575.eee_disable) {

  ret_val = phy->ops.write_reg(hw, E1000_M88E1543_PAGE_ADDR, 18);
  if (ret_val)
   goto out;

  ret_val = phy->ops.read_reg(hw, E1000_M88E1543_EEE_CTRL_1,
         &phy_data);
  if (ret_val)
   goto out;

  phy_data |= E1000_M88E1543_EEE_CTRL_1_MS;
  ret_val = phy->ops.write_reg(hw, E1000_M88E1543_EEE_CTRL_1,
          phy_data);
  if (ret_val)
   goto out;


  ret_val = phy->ops.write_reg(hw, E1000_M88E1543_PAGE_ADDR, 0);
  if (ret_val)
   goto out;


  ret_val = igb_read_xmdio_reg(hw, E1000_EEE_ADV_ADDR_I354,
          E1000_EEE_ADV_DEV_I354,
          &phy_data);
  if (ret_val)
   goto out;

  if (adv100M)
   phy_data |= E1000_EEE_ADV_100_SUPPORTED;
  else
   phy_data &= ~E1000_EEE_ADV_100_SUPPORTED;

  if (adv1G)
   phy_data |= E1000_EEE_ADV_1000_SUPPORTED;
  else
   phy_data &= ~E1000_EEE_ADV_1000_SUPPORTED;

  ret_val = igb_write_xmdio_reg(hw, E1000_EEE_ADV_ADDR_I354,
      E1000_EEE_ADV_DEV_I354,
      phy_data);
 } else {

  ret_val = igb_read_xmdio_reg(hw, E1000_EEE_ADV_ADDR_I354,
          E1000_EEE_ADV_DEV_I354,
          &phy_data);
  if (ret_val)
   goto out;

  phy_data &= ~(E1000_EEE_ADV_100_SUPPORTED |
         E1000_EEE_ADV_1000_SUPPORTED);
  ret_val = igb_write_xmdio_reg(hw, E1000_EEE_ADV_ADDR_I354,
           E1000_EEE_ADV_DEV_I354,
           phy_data);
 }

out:
 return ret_val;
}
