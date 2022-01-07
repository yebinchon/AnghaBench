
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnxt {int hwrm_cmd_lock; } ;


 int bnxt_hwrm_do_send_msg (struct bnxt*,void*,int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int hwrm_send_message_silent(struct bnxt *bp, void *msg, u32 msg_len,
        int timeout)
{
 int rc;

 mutex_lock(&bp->hwrm_cmd_lock);
 rc = bnxt_hwrm_do_send_msg(bp, msg, msg_len, timeout, 1);
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
