
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int state; } ;


 int BNXT_STATE_FW_FATAL_COND ;
 int bnxt_force_fw_reset (struct bnxt*) ;
 int bnxt_rtnl_lock_sp (struct bnxt*) ;
 int bnxt_rtnl_unlock_sp (struct bnxt*) ;
 int set_bit (int ,int *) ;

void bnxt_fw_exception(struct bnxt *bp)
{
 set_bit(BNXT_STATE_FW_FATAL_COND, &bp->state);
 bnxt_rtnl_lock_sp(bp);
 bnxt_force_fw_reset(bp);
 bnxt_rtnl_unlock_sp(bp);
}
