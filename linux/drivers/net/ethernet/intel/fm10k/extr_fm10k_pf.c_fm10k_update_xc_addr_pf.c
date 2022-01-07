
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int (* enqueue_tx ) (struct fm10k_hw*,struct fm10k_mbx_info*,int*) ;} ;
struct fm10k_mbx_info {TYPE_1__ ops; } ;
struct fm10k_mac_update {int action; scalar_t__ flags; void* glort; void* vlan; void* mac_upper; int mac_lower; } ;
struct fm10k_hw {struct fm10k_mbx_info mbx; } ;
typedef int s32 ;
typedef int mac_update ;


 int FM10K_ERR_PARAM ;
 int FM10K_PF_ATTR_ID_MAC_UPDATE ;
 int FM10K_PF_MSG_ID_UPDATE_MAC_FWD_RULE ;
 int FM10K_VLAN_CLEAR ;
 int FM10K_VLAN_TABLE_VID_MAX ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int fm10k_glort_valid_pf (struct fm10k_hw*,int) ;
 int fm10k_tlv_attr_put_le_struct (int*,int ,struct fm10k_mac_update*,int) ;
 int fm10k_tlv_msg_init (int*,int ) ;
 int stub1 (struct fm10k_hw*,struct fm10k_mbx_info*,int*) ;

__attribute__((used)) static s32 fm10k_update_xc_addr_pf(struct fm10k_hw *hw, u16 glort,
       const u8 *mac, u16 vid, bool add, u8 flags)
{
 struct fm10k_mbx_info *mbx = &hw->mbx;
 struct fm10k_mac_update mac_update;
 u32 msg[5];


 vid &= ~FM10K_VLAN_CLEAR;


 if (!fm10k_glort_valid_pf(hw, glort) || vid >= FM10K_VLAN_TABLE_VID_MAX)
  return FM10K_ERR_PARAM;


 mac_update.mac_lower = cpu_to_le32(((u32)mac[2] << 24) |
       ((u32)mac[3] << 16) |
       ((u32)mac[4] << 8) |
       ((u32)mac[5]));
 mac_update.mac_upper = cpu_to_le16(((u16)mac[0] << 8) |
        ((u16)mac[1]));
 mac_update.vlan = cpu_to_le16(vid);
 mac_update.glort = cpu_to_le16(glort);
 mac_update.action = add ? 0 : 1;
 mac_update.flags = flags;


 fm10k_tlv_msg_init(msg, FM10K_PF_MSG_ID_UPDATE_MAC_FWD_RULE);
 fm10k_tlv_attr_put_le_struct(msg, FM10K_PF_ATTR_ID_MAC_UPDATE,
         &mac_update, sizeof(mac_update));


 return mbx->ops.enqueue_tx(hw, mbx, msg);
}
