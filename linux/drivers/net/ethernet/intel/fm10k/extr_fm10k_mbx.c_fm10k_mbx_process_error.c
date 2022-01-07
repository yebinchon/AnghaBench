
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_mbx_info {int state; int tail; void* remote; void* local; int mbx_hdr; } ;
struct fm10k_hw {int dummy; } ;
typedef int s32 ;


 void* FM10K_MBX_CRC_SEED ;
 int FM10K_MSG_HDR_FIELD_GET (int const,int ) ;
 int const FM10K_STATE_CONNECT ;


 int HEAD ;
 int fm10k_mbx_create_connect_hdr (struct fm10k_mbx_info*) ;
 int fm10k_mbx_create_reply (struct fm10k_hw*,struct fm10k_mbx_info*,int ) ;
 int fm10k_mbx_reset_work (struct fm10k_mbx_info*) ;

__attribute__((used)) static s32 fm10k_mbx_process_error(struct fm10k_hw *hw,
       struct fm10k_mbx_info *mbx)
{
 const u32 *hdr = &mbx->mbx_hdr;
 u16 head;


 head = FM10K_MSG_HDR_FIELD_GET(*hdr, HEAD);

 switch (mbx->state) {
 case 128:
 case 129:

  fm10k_mbx_reset_work(mbx);


  mbx->local = FM10K_MBX_CRC_SEED;
  mbx->remote = FM10K_MBX_CRC_SEED;


  mbx->tail = head;


  if (mbx->state == 128) {
   mbx->state = FM10K_STATE_CONNECT;
   break;
  }


  fm10k_mbx_create_connect_hdr(mbx);
  return 0;
 default:
  break;
 }

 return fm10k_mbx_create_reply(hw, mbx, mbx->tail);
}
