
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnxt {int dummy; } ;


 int bnxt_hwrm_do_send_msg (struct bnxt*,void*,int ,int,int) ;

int _hwrm_send_message_silent(struct bnxt *bp, void *msg, u32 msg_len,
         int timeout)
{
 return bnxt_hwrm_do_send_msg(bp, msg, msg_len, timeout, 1);
}
