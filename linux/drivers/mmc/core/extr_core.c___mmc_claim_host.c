
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mmc_host {int claimed; int claim_cnt; int wq; int lock; } ;
struct mmc_ctx {int dummy; } ;
typedef int atomic_t ;


 int DECLARE_WAITQUEUE (int ,struct task_struct*) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int atomic_read (int *) ;
 struct task_struct* current ;
 int might_sleep () ;
 scalar_t__ mmc_ctx_matches (struct mmc_host*,struct mmc_ctx*,struct task_struct*) ;
 int mmc_ctx_set_claimer (struct mmc_host*,struct mmc_ctx*,struct task_struct*) ;
 int mmc_dev (struct mmc_host*) ;
 int pm_runtime_get_sync (int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait ;
 int wake_up (int *) ;

int __mmc_claim_host(struct mmc_host *host, struct mmc_ctx *ctx,
       atomic_t *abort)
{
 struct task_struct *task = ctx ? ((void*)0) : current;
 DECLARE_WAITQUEUE(wait, current);
 unsigned long flags;
 int stop;
 bool pm = 0;

 might_sleep();

 add_wait_queue(&host->wq, &wait);
 spin_lock_irqsave(&host->lock, flags);
 while (1) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  stop = abort ? atomic_read(abort) : 0;
  if (stop || !host->claimed || mmc_ctx_matches(host, ctx, task))
   break;
  spin_unlock_irqrestore(&host->lock, flags);
  schedule();
  spin_lock_irqsave(&host->lock, flags);
 }
 set_current_state(TASK_RUNNING);
 if (!stop) {
  host->claimed = 1;
  mmc_ctx_set_claimer(host, ctx, task);
  host->claim_cnt += 1;
  if (host->claim_cnt == 1)
   pm = 1;
 } else
  wake_up(&host->wq);
 spin_unlock_irqrestore(&host->lock, flags);
 remove_wait_queue(&host->wq, &wait);

 if (pm)
  pm_runtime_get_sync(mmc_dev(host));

 return stop;
}
