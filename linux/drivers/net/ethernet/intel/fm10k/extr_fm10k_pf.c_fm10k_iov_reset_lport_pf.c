
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* enqueue_tx ) (struct fm10k_hw*,TYPE_2__*,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_vf_info {scalar_t__ glort; scalar_t__ vf_flags; TYPE_2__ mbx; } ;
struct fm10k_hw {int dummy; } ;


 scalar_t__ FM10K_VF_FLAG_ENABLED (struct fm10k_vf_info*) ;
 int FM10K_VF_MSG_ID_LPORT_STATE ;
 int fm10k_tlv_msg_init (int *,int ) ;
 int fm10k_update_lport_state_pf (struct fm10k_hw*,scalar_t__,int,int) ;
 int stub1 (struct fm10k_hw*,TYPE_2__*,int *) ;

__attribute__((used)) static void fm10k_iov_reset_lport_pf(struct fm10k_hw *hw,
         struct fm10k_vf_info *vf_info)
{
 u32 msg[1];


 if (FM10K_VF_FLAG_ENABLED(vf_info)) {

  fm10k_update_lport_state_pf(hw, vf_info->glort, 1, 0);


  fm10k_tlv_msg_init(msg, FM10K_VF_MSG_ID_LPORT_STATE);
  vf_info->mbx.ops.enqueue_tx(hw, &vf_info->mbx, msg);
 }


 vf_info->vf_flags = 0;
 vf_info->glort = 0;
}
