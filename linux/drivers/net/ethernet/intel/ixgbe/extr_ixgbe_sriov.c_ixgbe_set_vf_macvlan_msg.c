
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_5__ {int (* set_vlan_anti_spoofing ) (struct ixgbe_hw*,int,size_t) ;int (* set_mac_anti_spoofing ) (struct ixgbe_hw*,int,size_t) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; TYPE_1__* vfinfo; } ;
struct TYPE_4__ {scalar_t__ spoofchk_enabled; int trusted; scalar_t__ pf_set_mac; } ;


 int ENOSPC ;
 size_t IXGBE_VT_MSGINFO_MASK ;
 size_t IXGBE_VT_MSGINFO_SHIFT ;
 int drv ;
 int e_warn (int ,char*,size_t) ;
 int is_valid_ether_addr (int *) ;
 int ixgbe_set_vf_macvlan (struct ixgbe_adapter*,size_t,int,int *) ;
 int stub1 (struct ixgbe_hw*,int,size_t) ;
 int stub2 (struct ixgbe_hw*,int,size_t) ;

__attribute__((used)) static int ixgbe_set_vf_macvlan_msg(struct ixgbe_adapter *adapter,
        u32 *msgbuf, u32 vf)
{
 u8 *new_mac = ((u8 *)(&msgbuf[1]));
 int index = (msgbuf[0] & IXGBE_VT_MSGINFO_MASK) >>
      IXGBE_VT_MSGINFO_SHIFT;
 int err;

 if (adapter->vfinfo[vf].pf_set_mac && !adapter->vfinfo[vf].trusted &&
     index > 0) {
  e_warn(drv,
         "VF %d requested MACVLAN filter but is administratively denied\n",
         vf);
  return -1;
 }


 if (index) {
  if (!is_valid_ether_addr(new_mac)) {
   e_warn(drv, "VF %d attempted to set invalid mac\n", vf);
   return -1;
  }





  if (adapter->vfinfo[vf].spoofchk_enabled) {
   struct ixgbe_hw *hw = &adapter->hw;

   hw->mac.ops.set_mac_anti_spoofing(hw, 0, vf);
   hw->mac.ops.set_vlan_anti_spoofing(hw, 0, vf);
  }
 }

 err = ixgbe_set_vf_macvlan(adapter, vf, index, new_mac);
 if (err == -ENOSPC)
  e_warn(drv,
         "VF %d has requested a MACVLAN filter but there is no space for it\n",
         vf);

 return err < 0;
}
