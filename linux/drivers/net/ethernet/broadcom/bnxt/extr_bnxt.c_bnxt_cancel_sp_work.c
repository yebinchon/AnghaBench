
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int sp_task; } ;


 scalar_t__ BNXT_PF (struct bnxt*) ;
 int bnxt_pf_wq ;
 int cancel_work_sync (int *) ;
 int flush_workqueue (int ) ;

__attribute__((used)) static void bnxt_cancel_sp_work(struct bnxt *bp)
{
 if (BNXT_PF(bp))
  flush_workqueue(bnxt_pf_wq);
 else
  cancel_work_sync(&bp->sp_task);
}
