
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fm10k_vf_info {int vf_idx; int glort; } ;
struct TYPE_3__ {int (* set_lport ) (struct fm10k_hw*,struct fm10k_vf_info*,int ,int ) ;int (* assign_default_mac_vlan ) (struct fm10k_hw*,struct fm10k_vf_info*) ;int (* reset_lport ) (struct fm10k_hw*,struct fm10k_vf_info*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ iov; } ;
struct fm10k_intfc {struct fm10k_hw hw; } ;


 int FM10K_VF_FLAG_MULTI_CAPABLE ;
 int fm10k_clear_macvlan_queue (struct fm10k_intfc*,int ,int) ;
 int fm10k_mbx_lock (struct fm10k_intfc*) ;
 int fm10k_mbx_unlock (struct fm10k_intfc*) ;
 int stub1 (struct fm10k_hw*,struct fm10k_vf_info*) ;
 int stub2 (struct fm10k_hw*,struct fm10k_vf_info*) ;
 int stub3 (struct fm10k_hw*,struct fm10k_vf_info*,int ,int ) ;

__attribute__((used)) static inline void fm10k_reset_vf_info(struct fm10k_intfc *interface,
           struct fm10k_vf_info *vf_info)
{
 struct fm10k_hw *hw = &interface->hw;


 fm10k_mbx_lock(interface);


 hw->iov.ops.reset_lport(hw, vf_info);

 fm10k_clear_macvlan_queue(interface, vf_info->glort, 0);


 hw->iov.ops.assign_default_mac_vlan(hw, vf_info);


 hw->iov.ops.set_lport(hw, vf_info, vf_info->vf_idx,
         FM10K_VF_FLAG_MULTI_CAPABLE);

 fm10k_mbx_unlock(interface);
}
