
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* process ) (struct fm10k_hw*,struct fm10k_mbx_info*) ;} ;
struct fm10k_mbx_info {scalar_t__ state; int timeout; TYPE_1__ ops; } ;
struct TYPE_4__ {int (* request_lport_map ) (struct fm10k_hw*) ;} ;
struct fm10k_mac_info {int get_host_state; scalar_t__ dglort_map; TYPE_2__ ops; scalar_t__ tx_ready; } ;
struct fm10k_hw {struct fm10k_mac_info mac; struct fm10k_mbx_info mbx; } ;
typedef int s32 ;


 scalar_t__ FM10K_DGLORTMAP_NONE ;
 int FM10K_ERR_RESET_REQUESTED ;
 scalar_t__ FM10K_STATE_OPEN ;
 int FM10K_TXDCTL (int ) ;
 int FM10K_TXDCTL_ENABLE ;
 int fm10k_read_reg (struct fm10k_hw*,int ) ;
 int stub1 (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 int stub2 (struct fm10k_hw*) ;

s32 fm10k_get_host_state_generic(struct fm10k_hw *hw, bool *host_ready)
{
 struct fm10k_mbx_info *mbx = &hw->mbx;
 struct fm10k_mac_info *mac = &hw->mac;
 s32 ret_val = 0;
 u32 txdctl = fm10k_read_reg(hw, FM10K_TXDCTL(0));


 mbx->ops.process(hw, mbx);


 if (!(~txdctl) || !(txdctl & FM10K_TXDCTL_ENABLE))
  mac->get_host_state = 1;


 if (!mac->get_host_state || !(~txdctl))
  goto out;


 if (mac->tx_ready && !(txdctl & FM10K_TXDCTL_ENABLE)) {
  ret_val = FM10K_ERR_RESET_REQUESTED;
  goto out;
 }


 if (!mbx->timeout) {
  ret_val = FM10K_ERR_RESET_REQUESTED;
  goto out;
 }


 if (mbx->state != FM10K_STATE_OPEN)
  goto out;


 if (mac->dglort_map == FM10K_DGLORTMAP_NONE) {
  if (mac->ops.request_lport_map)
   ret_val = mac->ops.request_lport_map(hw);

  goto out;
 }




 mac->get_host_state = 0;

out:
 *host_ready = !mac->get_host_state;
 return ret_val;
}
