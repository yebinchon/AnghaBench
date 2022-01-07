
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* check_for_rst ) (struct ixgbe_hw*) ;} ;
struct ixgbe_mbx_info {int timeout; TYPE_1__ ops; } ;
struct ixgbe_mac_info {int get_link_status; scalar_t__ type; } ;
struct ixgbe_hw {struct ixgbe_mac_info mac; struct ixgbe_mbx_info mbx; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;





 int IXGBE_LINKS_SPEED_82599 ;
 int IXGBE_LINKS_UP ;
 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VFLINKS ;
 scalar_t__ ixgbe_mac_82599_vf ;
 int stub1 (struct ixgbe_hw*) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbevf_hv_check_mac_link_vf(struct ixgbe_hw *hw,
     ixgbe_link_speed *speed,
     bool *link_up,
     bool autoneg_wait_to_complete)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 struct ixgbe_mac_info *mac = &hw->mac;
 u32 links_reg;


 if (!mbx->ops.check_for_rst(hw) || !mbx->timeout)
  mac->get_link_status = 1;

 if (!mac->get_link_status)
  goto out;


 links_reg = IXGBE_READ_REG(hw, IXGBE_VFLINKS);
 if (!(links_reg & IXGBE_LINKS_UP))
  goto out;




 if (mac->type == ixgbe_mac_82599_vf) {
  int i;

  for (i = 0; i < 5; i++) {
   udelay(100);
   links_reg = IXGBE_READ_REG(hw, IXGBE_VFLINKS);

   if (!(links_reg & IXGBE_LINKS_UP))
    goto out;
  }
 }

 switch (links_reg & IXGBE_LINKS_SPEED_82599) {
 case 129:
  *speed = IXGBE_LINK_SPEED_10GB_FULL;
  break;
 case 128:
  *speed = IXGBE_LINK_SPEED_1GB_FULL;
  break;
 case 130:
  *speed = IXGBE_LINK_SPEED_100_FULL;
  break;
 }




 mac->get_link_status = 0;

out:
 *link_up = !mac->get_link_status;
 return 0;
}
