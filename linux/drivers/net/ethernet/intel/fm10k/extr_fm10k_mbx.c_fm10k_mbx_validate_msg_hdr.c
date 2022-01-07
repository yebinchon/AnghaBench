
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_mbx_info {int head; int tail; int mbmem_len; int tail_len; int mbx_hdr; } ;
typedef int s32 ;


 int CONNECT_SIZE ;
 int FM10K_MBX_ERR_HEAD ;
 int FM10K_MBX_ERR_RSVD0 ;
 int FM10K_MBX_ERR_SIZE ;
 int FM10K_MBX_ERR_TAIL ;
 int FM10K_MBX_ERR_TYPE ;




 int FM10K_MSG_HDR_FIELD_GET (int const,int ) ;
 int FM10K_MSG_HDR_MASK (int ) ;
 int FM10K_VFMBX_MSG_MTU ;
 int HEAD ;
 int RSVD0 ;
 int TAIL ;
 int TYPE ;
 int fm10k_mbx_index_len (struct fm10k_mbx_info*,int,int) ;

__attribute__((used)) static s32 fm10k_mbx_validate_msg_hdr(struct fm10k_mbx_info *mbx)
{
 u16 type, rsvd0, head, tail, size;
 const u32 *hdr = &mbx->mbx_hdr;

 type = FM10K_MSG_HDR_FIELD_GET(*hdr, TYPE);
 rsvd0 = FM10K_MSG_HDR_FIELD_GET(*hdr, RSVD0);
 tail = FM10K_MSG_HDR_FIELD_GET(*hdr, TAIL);
 head = FM10K_MSG_HDR_FIELD_GET(*hdr, HEAD);
 size = FM10K_MSG_HDR_FIELD_GET(*hdr, CONNECT_SIZE);

 if (rsvd0)
  return FM10K_MBX_ERR_RSVD0;

 switch (type) {
 case 129:

  if (tail != mbx->head)
   return FM10K_MBX_ERR_TAIL;


 case 130:

  if (!head || (head == FM10K_MSG_HDR_MASK(HEAD)))
   return FM10K_MBX_ERR_HEAD;
  if (fm10k_mbx_index_len(mbx, head, mbx->tail) > mbx->tail_len)
   return FM10K_MBX_ERR_HEAD;


  if (!tail || (tail == FM10K_MSG_HDR_MASK(TAIL)))
   return FM10K_MBX_ERR_TAIL;
  if (fm10k_mbx_index_len(mbx, mbx->head, tail) < mbx->mbmem_len)
   break;

  return FM10K_MBX_ERR_TAIL;
 case 131:

  if ((size < FM10K_VFMBX_MSG_MTU) || (size & (size + 1)))
   return FM10K_MBX_ERR_SIZE;


 case 128:
  if (!head || (head == FM10K_MSG_HDR_MASK(HEAD)))
   return FM10K_MBX_ERR_HEAD;

  if (tail)
   return FM10K_MBX_ERR_TAIL;

  break;
 default:
  return FM10K_MBX_ERR_TYPE;
 }

 return 0;
}
