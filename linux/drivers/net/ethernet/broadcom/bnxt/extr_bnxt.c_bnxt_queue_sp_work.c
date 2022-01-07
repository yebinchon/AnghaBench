
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int sp_task; } ;


 scalar_t__ BNXT_PF (struct bnxt*) ;
 int bnxt_pf_wq ;
 int queue_work (int ,int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void bnxt_queue_sp_work(struct bnxt *bp)
{
 if (BNXT_PF(bp))
  queue_work(bnxt_pf_wq, &bp->sp_task);
 else
  schedule_work(&bp->sp_task);
}
