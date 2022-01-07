
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {int (* enqueue_tx ) (struct fm10k_hw*,struct fm10k_mbx_info*,int*) ;} ;
struct fm10k_mbx_info {TYPE_1__ ops; } ;
struct fm10k_hw {struct fm10k_mbx_info mbx; } ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 int FM10K_MAC_VLAN_MSG_VLAN ;
 int FM10K_VF_MSG_ID_MAC_VLAN ;
 int FM10K_VLAN_CLEAR ;
 int fm10k_tlv_attr_put_u32 (int*,int ,int) ;
 int fm10k_tlv_msg_init (int*,int ) ;
 int stub1 (struct fm10k_hw*,struct fm10k_mbx_info*,int*) ;

__attribute__((used)) static s32 fm10k_update_vlan_vf(struct fm10k_hw *hw, u32 vid, u8 vsi, bool set)
{
 struct fm10k_mbx_info *mbx = &hw->mbx;
 u32 msg[4];


 if (vsi)
  return FM10K_ERR_PARAM;


 if ((vid << 16 | vid) >> 28)
  return FM10K_ERR_PARAM;


 if (!set)
  vid |= FM10K_VLAN_CLEAR;


 fm10k_tlv_msg_init(msg, FM10K_VF_MSG_ID_MAC_VLAN);
 fm10k_tlv_attr_put_u32(msg, FM10K_MAC_VLAN_MSG_VLAN, vid);


 return mbx->ops.enqueue_tx(hw, mbx, msg);
}
