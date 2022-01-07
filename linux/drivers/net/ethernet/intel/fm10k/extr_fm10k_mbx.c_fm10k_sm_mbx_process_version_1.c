
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_mbx_info {scalar_t__ state; int remote; int mbx_hdr; } ;
struct fm10k_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ FM10K_MBX_ERR_SRC ;
 int FM10K_MSG_HDR_FIELD_GET (int const,int ) ;
 scalar_t__ FM10K_STATE_CONNECT ;
 scalar_t__ FM10K_STATE_OPEN ;
 int SM_HEAD ;
 int SM_TAIL ;
 int fm10k_sm_mbx_create_reply (struct fm10k_hw*,struct fm10k_mbx_info*,int ) ;
 scalar_t__ fm10k_sm_mbx_receive (struct fm10k_hw*,struct fm10k_mbx_info*,int ) ;

__attribute__((used)) static s32 fm10k_sm_mbx_process_version_1(struct fm10k_hw *hw,
       struct fm10k_mbx_info *mbx)
{
 const u32 *hdr = &mbx->mbx_hdr;
 u16 head, tail;
 s32 len;


 tail = FM10K_MSG_HDR_FIELD_GET(*hdr, SM_TAIL);
 head = FM10K_MSG_HDR_FIELD_GET(*hdr, SM_HEAD);


 if (mbx->state == FM10K_STATE_CONNECT) {
  if (!mbx->remote)
   goto send_reply;
  if (mbx->remote != 1)
   return FM10K_MBX_ERR_SRC;

  mbx->state = FM10K_STATE_OPEN;
 }

 do {

  len = fm10k_sm_mbx_receive(hw, mbx, tail);
  if (len < 0)
   return len;


 } while (len);

send_reply:
 fm10k_sm_mbx_create_reply(hw, mbx, head);

 return 0;
}
