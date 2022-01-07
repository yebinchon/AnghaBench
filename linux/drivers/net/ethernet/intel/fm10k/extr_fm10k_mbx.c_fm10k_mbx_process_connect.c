
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int size; } ;
struct fm10k_mbx_info {int state; int tail; TYPE_1__ rx; int max_size; int mbx_hdr; } ;
struct fm10k_hw {int dummy; } ;
typedef int s32 ;
typedef enum fm10k_mbx_state { ____Placeholder_fm10k_mbx_state } fm10k_mbx_state ;


 int CONNECT_SIZE ;
 int FM10K_MSG_HDR_FIELD_GET (int const,int ) ;



 int HEAD ;
 int fm10k_mbx_connect_reset (struct fm10k_mbx_info*) ;
 int fm10k_mbx_create_reply (struct fm10k_hw*,struct fm10k_mbx_info*,int ) ;
 int fm10k_mbx_update_max_size (struct fm10k_mbx_info*,int ) ;

__attribute__((used)) static s32 fm10k_mbx_process_connect(struct fm10k_hw *hw,
         struct fm10k_mbx_info *mbx)
{
 const enum fm10k_mbx_state state = mbx->state;
 const u32 *hdr = &mbx->mbx_hdr;
 u16 size, head;


 size = FM10K_MSG_HDR_FIELD_GET(*hdr, CONNECT_SIZE);
 head = FM10K_MSG_HDR_FIELD_GET(*hdr, HEAD);

 switch (state) {
 case 129:
 case 128:

  fm10k_mbx_connect_reset(mbx);
  break;
 case 130:

  if (size > mbx->rx.size) {
   mbx->max_size = mbx->rx.size - 1;
  } else {

   mbx->state = 128;

   fm10k_mbx_update_max_size(mbx, size);
  }
  break;
 default:
  break;
 }


 mbx->tail = head;

 return fm10k_mbx_create_reply(hw, mbx, head);
}
