
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fm10k_vf_info {int vf_flags; int glort; int mac; int vsi; scalar_t__ pf_vid; } ;
struct fm10k_mbx_info {int dummy; } ;
struct TYPE_3__ {int (* update_vlan ) (struct fm10k_hw*,int,int ,int) ;int (* update_uc_addr ) (struct fm10k_hw*,int ,int *,int,int,int ) ;int (* update_mc_addr ) (struct fm10k_hw*,int ,int *,int,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int ETH_ALEN ;
 int FM10K_ERR_PARAM ;
 size_t FM10K_MAC_VLAN_MSG_MAC ;
 size_t FM10K_MAC_VLAN_MSG_MULTICAST ;
 size_t FM10K_MAC_VLAN_MSG_VLAN ;
 int FM10K_VF_FLAG_ENABLED (struct fm10k_vf_info*) ;
 int FM10K_VF_FLAG_MULTI_ENABLED ;
 int FM10K_VLAN_CLEAR ;
 int ether_addr_equal (int *,int ) ;
 int fm10k_iov_select_vid (struct fm10k_vf_info*,int) ;
 int fm10k_tlv_attr_get_mac_vlan (int*,int *,int*) ;
 int fm10k_tlv_attr_get_u32 (int*,int*) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int stub1 (struct fm10k_hw*,int,int ,int) ;
 int stub2 (struct fm10k_hw*,int ,int *,int,int,int ) ;
 int stub3 (struct fm10k_hw*,int ,int *,int,int) ;

s32 fm10k_iov_msg_mac_vlan_pf(struct fm10k_hw *hw, u32 **results,
         struct fm10k_mbx_info *mbx)
{
 struct fm10k_vf_info *vf_info = (struct fm10k_vf_info *)mbx;
 u8 mac[ETH_ALEN];
 u32 *result;
 int err = 0;
 bool set;
 u16 vlan;
 u32 vid;


 if (!FM10K_VF_FLAG_ENABLED(vf_info))
  err = FM10K_ERR_PARAM;

 if (!err && !!results[FM10K_MAC_VLAN_MSG_VLAN]) {
  result = results[FM10K_MAC_VLAN_MSG_VLAN];


  err = fm10k_tlv_attr_get_u32(result, &vid);
  if (err)
   return err;

  set = !(vid & FM10K_VLAN_CLEAR);
  vid &= ~FM10K_VLAN_CLEAR;
  if (vid >> 16) {



   if (vf_info->pf_vid)
    return FM10K_ERR_PARAM;
  } else {
   err = fm10k_iov_select_vid(vf_info, (u16)vid);
   if (err < 0)
    return err;

   vid = err;
  }


  err = hw->mac.ops.update_vlan(hw, vid, vf_info->vsi, set);
 }

 if (!err && !!results[FM10K_MAC_VLAN_MSG_MAC]) {
  result = results[FM10K_MAC_VLAN_MSG_MAC];


  err = fm10k_tlv_attr_get_mac_vlan(result, mac, &vlan);
  if (err)
   return err;


  if (is_valid_ether_addr(vf_info->mac) &&
      !ether_addr_equal(mac, vf_info->mac))
   return FM10K_ERR_PARAM;

  set = !(vlan & FM10K_VLAN_CLEAR);
  vlan &= ~FM10K_VLAN_CLEAR;

  err = fm10k_iov_select_vid(vf_info, vlan);
  if (err < 0)
   return err;

  vlan = (u16)err;


  err = hw->mac.ops.update_uc_addr(hw, vf_info->glort,
       mac, vlan, set, 0);
 }

 if (!err && !!results[FM10K_MAC_VLAN_MSG_MULTICAST]) {
  result = results[FM10K_MAC_VLAN_MSG_MULTICAST];


  err = fm10k_tlv_attr_get_mac_vlan(result, mac, &vlan);
  if (err)
   return err;


  if (!(vf_info->vf_flags & FM10K_VF_FLAG_MULTI_ENABLED))
   return FM10K_ERR_PARAM;

  set = !(vlan & FM10K_VLAN_CLEAR);
  vlan &= ~FM10K_VLAN_CLEAR;

  err = fm10k_iov_select_vid(vf_info, vlan);
  if (err < 0)
   return err;

  vlan = (u16)err;


  err = hw->mac.ops.update_mc_addr(hw, vf_info->glort,
       mac, vlan, set);
 }

 return err;
}
