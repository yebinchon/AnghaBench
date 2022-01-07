
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_mbx_info {scalar_t__ state; int tail; int mbx_hdr; } ;
struct fm10k_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int FM10K_MSG_HDR_FIELD_GET (int const,int ) ;
 scalar_t__ FM10K_STATE_CONNECT ;
 scalar_t__ FM10K_STATE_OPEN ;
 int HEAD ;
 int TAIL ;
 scalar_t__ fm10k_mbx_create_reply (struct fm10k_hw*,struct fm10k_mbx_info*,int ) ;
 int fm10k_mbx_dequeue_rx (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_mbx_push_tail (struct fm10k_hw*,struct fm10k_mbx_info*,int ) ;
 scalar_t__ fm10k_mbx_verify_remote_crc (struct fm10k_mbx_info*) ;

__attribute__((used)) static s32 fm10k_mbx_process_data(struct fm10k_hw *hw,
      struct fm10k_mbx_info *mbx)
{
 const u32 *hdr = &mbx->mbx_hdr;
 u16 head, tail;
 s32 err;


 head = FM10K_MSG_HDR_FIELD_GET(*hdr, HEAD);
 tail = FM10K_MSG_HDR_FIELD_GET(*hdr, TAIL);


 if (mbx->state == FM10K_STATE_CONNECT) {
  mbx->tail = head;
  mbx->state = FM10K_STATE_OPEN;
 }


 err = fm10k_mbx_push_tail(hw, mbx, tail);
 if (err < 0)
  return err;


 err = fm10k_mbx_verify_remote_crc(mbx);
 if (err)
  return err;


 fm10k_mbx_dequeue_rx(hw, mbx);

 return fm10k_mbx_create_reply(hw, mbx, head);
}
