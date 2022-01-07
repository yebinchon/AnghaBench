
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mmc_ctx {struct task_struct* task; } ;
struct mmc_host {struct mmc_ctx* claimer; struct mmc_ctx default_ctx; } ;



__attribute__((used)) static inline void mmc_ctx_set_claimer(struct mmc_host *host,
           struct mmc_ctx *ctx,
           struct task_struct *task)
{
 if (!host->claimer) {
  if (ctx)
   host->claimer = ctx;
  else
   host->claimer = &host->default_ctx;
 }
 if (task)
  host->claimer->task = task;
}
