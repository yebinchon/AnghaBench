
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_info {int state; int tail; int local; int remote; } ;
struct fm10k_hw {int dummy; } ;
typedef int s32 ;
typedef enum fm10k_mbx_state { ____Placeholder_fm10k_mbx_state } fm10k_mbx_state ;


 int FM10K_ERR_RESET_REQUESTED ;
 int FM10K_STATE_CLOSED ;



 int fm10k_sm_mbx_connect_reset (struct fm10k_mbx_info*) ;
 int fm10k_sm_mbx_create_reply (struct fm10k_hw*,struct fm10k_mbx_info*,int ) ;

__attribute__((used)) static s32 fm10k_sm_mbx_process_reset(struct fm10k_hw *hw,
          struct fm10k_mbx_info *mbx)
{
 s32 err = 0;
 const enum fm10k_mbx_state state = mbx->state;

 switch (state) {
 case 129:

  mbx->state = FM10K_STATE_CLOSED;
  mbx->remote = 0;
  mbx->local = 0;
  break;
 case 128:

  fm10k_sm_mbx_connect_reset(mbx);
  err = FM10K_ERR_RESET_REQUESTED;
  break;
 case 130:

  mbx->remote = mbx->local;
 default:
  break;
 }

 fm10k_sm_mbx_create_reply(hw, mbx, mbx->tail);

 return err;
}
