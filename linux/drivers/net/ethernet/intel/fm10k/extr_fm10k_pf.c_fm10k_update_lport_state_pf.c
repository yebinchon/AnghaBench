
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int (* enqueue_tx ) (struct fm10k_hw*,struct fm10k_mbx_info*,int*) ;} ;
struct fm10k_mbx_info {TYPE_1__ ops; } ;
struct fm10k_hw {struct fm10k_mbx_info mbx; } ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 int FM10K_PF_ATTR_ID_PORT ;
 int FM10K_PF_MSG_ID_LPORT_CREATE ;
 int FM10K_PF_MSG_ID_LPORT_DELETE ;
 int FM10K_XCAST_MODE_NONE ;
 int fm10k_glort_valid_pf (struct fm10k_hw*,int) ;
 int fm10k_tlv_attr_put_u32 (int*,int ,int) ;
 int fm10k_tlv_msg_init (int*,int ) ;
 int fm10k_update_xcast_mode_pf (struct fm10k_hw*,int,int ) ;
 int stub1 (struct fm10k_hw*,struct fm10k_mbx_info*,int*) ;

__attribute__((used)) static s32 fm10k_update_lport_state_pf(struct fm10k_hw *hw, u16 glort,
           u16 count, bool enable)
{
 struct fm10k_mbx_info *mbx = &hw->mbx;
 u32 msg[3], lport_msg;


 if (!count)
  return 0;


 if (!fm10k_glort_valid_pf(hw, glort))
  return FM10K_ERR_PARAM;


 if (!enable)
  fm10k_update_xcast_mode_pf(hw, glort, FM10K_XCAST_MODE_NONE);


 lport_msg = ((u32)count << 16) | glort;


 fm10k_tlv_msg_init(msg, enable ? FM10K_PF_MSG_ID_LPORT_CREATE :
      FM10K_PF_MSG_ID_LPORT_DELETE);
 fm10k_tlv_attr_put_u32(msg, FM10K_PF_ATTR_ID_PORT, lport_msg);


 return mbx->ops.enqueue_tx(hw, mbx, msg);
}
