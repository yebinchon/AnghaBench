
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_mbx_info {int state; int tail; scalar_t__ head_len; scalar_t__ pushed; int mbx_hdr; } ;
struct fm10k_hw {int dummy; } ;
typedef scalar_t__ s32 ;
typedef enum fm10k_mbx_state { ____Placeholder_fm10k_mbx_state } fm10k_mbx_state ;


 scalar_t__ FM10K_MBX_ERR_HEAD ;
 scalar_t__ FM10K_MBX_ERR_TAIL ;
 int FM10K_MSG_HDR_FIELD_GET (int const,int ) ;


 int HEAD ;
 int fm10k_mbx_connect_reset (struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_mbx_create_reply (struct fm10k_hw*,struct fm10k_mbx_info*,int ) ;
 int fm10k_mbx_tx_complete (struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_mbx_verify_remote_crc (struct fm10k_mbx_info*) ;

__attribute__((used)) static s32 fm10k_mbx_process_disconnect(struct fm10k_hw *hw,
     struct fm10k_mbx_info *mbx)
{
 const enum fm10k_mbx_state state = mbx->state;
 const u32 *hdr = &mbx->mbx_hdr;
 u16 head;
 s32 err;


 head = FM10K_MSG_HDR_FIELD_GET(*hdr, HEAD);


 if (mbx->pushed)
  return FM10K_MBX_ERR_TAIL;


 mbx->head_len = 0;


 err = fm10k_mbx_verify_remote_crc(mbx);
 if (err)
  return err;

 switch (state) {
 case 129:
 case 128:

  if (!fm10k_mbx_tx_complete(mbx))
   break;


  if (head != mbx->tail)
   return FM10K_MBX_ERR_HEAD;


  fm10k_mbx_connect_reset(mbx);
  break;
 default:
  break;
 }

 return fm10k_mbx_create_reply(hw, mbx, head);
}
