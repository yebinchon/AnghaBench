
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fm10k_mbx_info {int state; int remote; int tail_len; } ;
struct fm10k_hw {int dummy; } ;






 int fm10k_sm_mbx_create_connect_hdr (struct fm10k_mbx_info*,int ) ;
 int fm10k_sm_mbx_create_data_hdr (struct fm10k_mbx_info*) ;
 int fm10k_sm_mbx_transmit (struct fm10k_hw*,struct fm10k_mbx_info*,int ) ;

__attribute__((used)) static void fm10k_sm_mbx_create_reply(struct fm10k_hw *hw,
          struct fm10k_mbx_info *mbx, u16 head)
{
 switch (mbx->state) {
 case 128:
 case 129:

  fm10k_sm_mbx_transmit(hw, mbx, head);


  if (mbx->tail_len || (mbx->state == 128)) {
   fm10k_sm_mbx_create_data_hdr(mbx);
  } else {
   mbx->remote = 0;
   fm10k_sm_mbx_create_connect_hdr(mbx, 0);
  }
  break;
 case 130:
 case 131:
  fm10k_sm_mbx_create_connect_hdr(mbx, 0);
  break;
 default:
  break;
 }
}
