
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_info {int state; int local; int remote; } ;
typedef enum fm10k_mbx_state { ____Placeholder_fm10k_mbx_state } fm10k_mbx_state ;





 int fm10k_sm_mbx_connect_reset (struct fm10k_mbx_info*) ;
 int fm10k_sm_mbx_create_connect_hdr (struct fm10k_mbx_info*,int ) ;

__attribute__((used)) static void fm10k_sm_mbx_process_error(struct fm10k_mbx_info *mbx)
{
 const enum fm10k_mbx_state state = mbx->state;

 switch (state) {
 case 129:

  mbx->remote = 0;
  break;
 case 128:

  fm10k_sm_mbx_connect_reset(mbx);
  break;
 case 130:

  if (mbx->remote) {
   while (mbx->local > 1)
    mbx->local--;
   mbx->remote = 0;
  }
  break;
 default:
  break;
 }

 fm10k_sm_mbx_create_connect_hdr(mbx, 0);
}
