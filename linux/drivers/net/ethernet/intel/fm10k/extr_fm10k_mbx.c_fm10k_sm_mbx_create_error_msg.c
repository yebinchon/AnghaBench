
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_info {int dummy; } ;
typedef int s32 ;







 int fm10k_sm_mbx_create_connect_hdr (struct fm10k_mbx_info*,int) ;
 int fm10k_sm_mbx_process_error (struct fm10k_mbx_info*) ;

__attribute__((used)) static void fm10k_sm_mbx_create_error_msg(struct fm10k_mbx_info *mbx, s32 err)
{

 switch (err) {
 case 128:
 case 132:
 case 129:
 case 130:
 case 131:
  break;
 default:
  return;
 }


 fm10k_sm_mbx_process_error(mbx);
 fm10k_sm_mbx_create_connect_hdr(mbx, 1);
}
