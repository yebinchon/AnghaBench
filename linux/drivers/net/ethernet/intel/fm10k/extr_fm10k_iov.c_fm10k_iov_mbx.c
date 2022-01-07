
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_10__ {int (* process ) (struct fm10k_hw*,struct fm10k_mbx_info*) ;int (* connect ) (struct fm10k_hw*,struct fm10k_mbx_info*) ;} ;
struct fm10k_mbx_info {TYPE_4__ ops; int timeout; } ;
struct fm10k_vf_info {scalar_t__ vf_flags; int glort; struct fm10k_mbx_info mbx; } ;
struct fm10k_iov_data {int next_vf_mbx; int num_vfs; struct fm10k_vf_info* vf_info; } ;
struct TYPE_9__ {int (* tx_ready ) (TYPE_5__*,int ) ;int (* process ) (struct fm10k_hw*,TYPE_5__*) ;} ;
struct TYPE_11__ {scalar_t__ state; TYPE_3__ ops; } ;
struct TYPE_7__ {int (* reset_resources ) (struct fm10k_hw*,struct fm10k_vf_info*) ;int (* reset_lport ) (struct fm10k_hw*,struct fm10k_vf_info*) ;} ;
struct TYPE_8__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_5__ mbx; TYPE_2__ iov; } ;
struct fm10k_intfc {int hw_sm_mbx_full; struct fm10k_iov_data* iov_data; struct fm10k_hw hw; } ;
typedef int s32 ;


 scalar_t__ FM10K_STATE_OPEN ;
 int FM10K_VFMBX_MSG_MTU ;
 int READ_ONCE (struct fm10k_iov_data*) ;
 int fm10k_clear_macvlan_queue (struct fm10k_intfc*,int ,int) ;
 int fm10k_glort_valid_pf (struct fm10k_hw*,int ) ;
 int fm10k_mbx_lock (struct fm10k_intfc*) ;
 int fm10k_mbx_unlock (struct fm10k_intfc*) ;
 int fm10k_service_event_schedule (struct fm10k_intfc*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct fm10k_hw*,TYPE_5__*) ;
 int stub2 (struct fm10k_hw*,struct fm10k_vf_info*) ;
 int stub3 (struct fm10k_hw*,struct fm10k_vf_info*) ;
 int stub4 (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 int stub5 (TYPE_5__*,int ) ;
 int stub6 (struct fm10k_hw*,struct fm10k_mbx_info*) ;

s32 fm10k_iov_mbx(struct fm10k_intfc *interface)
{
 struct fm10k_hw *hw = &interface->hw;
 struct fm10k_iov_data *iov_data;
 int i;


 if (!READ_ONCE(interface->iov_data))
  return 0;

 rcu_read_lock();

 iov_data = interface->iov_data;


 if (!iov_data)
  goto read_unlock;


 fm10k_mbx_lock(interface);
process_mbx:
 for (i = iov_data->next_vf_mbx ? : iov_data->num_vfs; i--;) {
  struct fm10k_vf_info *vf_info = &iov_data->vf_info[i];
  struct fm10k_mbx_info *mbx = &vf_info->mbx;
  u16 glort = vf_info->glort;


  hw->mbx.ops.process(hw, &hw->mbx);


  if (vf_info->vf_flags && !fm10k_glort_valid_pf(hw, glort)) {
   hw->iov.ops.reset_lport(hw, vf_info);
   fm10k_clear_macvlan_queue(interface, glort, 0);
  }


  if (!mbx->timeout) {
   hw->iov.ops.reset_resources(hw, vf_info);
   mbx->ops.connect(hw, mbx);
  }


  if (hw->mbx.state == FM10K_STATE_OPEN &&
      !hw->mbx.ops.tx_ready(&hw->mbx, FM10K_VFMBX_MSG_MTU)) {

   interface->hw_sm_mbx_full++;


   fm10k_service_event_schedule(interface);

   break;
  }


  mbx->ops.process(hw, mbx);
 }





 if (i >= 0) {
  iov_data->next_vf_mbx = i + 1;
 } else if (iov_data->next_vf_mbx) {
  iov_data->next_vf_mbx = 0;
  goto process_mbx;
 }


 fm10k_mbx_unlock(interface);

read_unlock:
 rcu_read_unlock();

 return 0;
}
