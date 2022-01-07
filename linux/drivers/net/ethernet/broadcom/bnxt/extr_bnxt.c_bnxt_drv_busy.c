
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int state; } ;


 int BNXT_STATE_IN_SP_TASK ;
 int BNXT_STATE_READ_STATS ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool bnxt_drv_busy(struct bnxt *bp)
{
 return (test_bit(BNXT_STATE_IN_SP_TASK, &bp->state) ||
  test_bit(BNXT_STATE_READ_STATS, &bp->state));
}
