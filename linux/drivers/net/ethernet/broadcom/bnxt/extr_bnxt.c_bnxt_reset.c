
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int state; } ;


 int BNXT_STATE_OPEN ;
 int bnxt_reset_task (struct bnxt*,int) ;
 int bnxt_rtnl_lock_sp (struct bnxt*) ;
 int bnxt_rtnl_unlock_sp (struct bnxt*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bnxt_reset(struct bnxt *bp, bool silent)
{
 bnxt_rtnl_lock_sp(bp);
 if (test_bit(BNXT_STATE_OPEN, &bp->state))
  bnxt_reset_task(bp, silent);
 bnxt_rtnl_unlock_sp(bp);
}
