
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* enqueue_tx ) (struct fm10k_hw*,struct fm10k_mbx_info*,int *) ;} ;
struct fm10k_mbx_info {TYPE_1__ ops; } ;
struct fm10k_hw {struct fm10k_mbx_info mbx; } ;
typedef int s32 ;


 int FM10K_PF_MSG_ID_LPORT_MAP ;
 int fm10k_tlv_msg_init (int *,int ) ;
 int stub1 (struct fm10k_hw*,struct fm10k_mbx_info*,int *) ;

__attribute__((used)) static s32 fm10k_request_lport_map_pf(struct fm10k_hw *hw)
{
 struct fm10k_mbx_info *mbx = &hw->mbx;
 u32 msg[1];


 fm10k_tlv_msg_init(msg, FM10K_PF_MSG_ID_LPORT_MAP);


 return mbx->ops.enqueue_tx(hw, mbx, msg);
}
