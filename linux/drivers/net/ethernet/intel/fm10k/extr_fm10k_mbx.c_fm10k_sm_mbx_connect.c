
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer; } ;
struct fm10k_mbx_info {scalar_t__ state; int mbx_lock; int max_size; int timeout; TYPE_1__ rx; } ;
struct fm10k_hw {int dummy; } ;
typedef int s32 ;


 int FM10K_MBX_ACK_INTERRUPT ;
 int FM10K_MBX_ERR_BUSY ;
 int FM10K_MBX_ERR_NO_SPACE ;
 int FM10K_MBX_INIT_TIMEOUT ;
 int FM10K_MBX_INTERRUPT_ENABLE ;
 int FM10K_MBX_MSG_MAX_SIZE ;
 int FM10K_MBX_REQ_INTERRUPT ;
 scalar_t__ FM10K_STATE_CLOSED ;
 scalar_t__ FM10K_STATE_CONNECT ;
 int fm10k_mbx_write (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 int fm10k_sm_mbx_connect_reset (struct fm10k_mbx_info*) ;
 int fm10k_sm_mbx_create_connect_hdr (struct fm10k_mbx_info*,int ) ;

__attribute__((used)) static s32 fm10k_sm_mbx_connect(struct fm10k_hw *hw, struct fm10k_mbx_info *mbx)
{

 if (!mbx->rx.buffer)
  return FM10K_MBX_ERR_NO_SPACE;


 if (mbx->state != FM10K_STATE_CLOSED)
  return FM10K_MBX_ERR_BUSY;


 mbx->timeout = FM10K_MBX_INIT_TIMEOUT;


 mbx->state = FM10K_STATE_CONNECT;
 mbx->max_size = FM10K_MBX_MSG_MAX_SIZE;


 fm10k_sm_mbx_connect_reset(mbx);


 mbx->mbx_lock = FM10K_MBX_REQ_INTERRUPT | FM10K_MBX_ACK_INTERRUPT |
   FM10K_MBX_INTERRUPT_ENABLE;


 fm10k_sm_mbx_create_connect_hdr(mbx, 0);
 fm10k_mbx_write(hw, mbx);

 return 0;
}
