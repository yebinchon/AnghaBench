
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int state; } ;


 int BNXT_STATE_IN_SP_TASK ;
 int clear_bit (int ,int *) ;
 int rtnl_lock () ;

__attribute__((used)) static void bnxt_rtnl_lock_sp(struct bnxt *bp)
{





 clear_bit(BNXT_STATE_IN_SP_TASK, &bp->state);
 rtnl_lock();
}
