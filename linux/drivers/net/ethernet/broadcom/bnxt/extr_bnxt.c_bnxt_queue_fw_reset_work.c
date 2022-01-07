
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int fw_reset_task; } ;


 scalar_t__ BNXT_PF (struct bnxt*) ;
 int bnxt_pf_wq ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int schedule_delayed_work (int *,unsigned long) ;

__attribute__((used)) static void bnxt_queue_fw_reset_work(struct bnxt *bp, unsigned long delay)
{
 if (BNXT_PF(bp))
  queue_delayed_work(bnxt_pf_wq, &bp->fw_reset_task, delay);
 else
  schedule_delayed_work(&bp->fw_reset_task, delay);
}
