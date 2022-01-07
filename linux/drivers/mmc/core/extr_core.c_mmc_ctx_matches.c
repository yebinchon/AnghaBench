
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mmc_host {struct mmc_ctx* claimer; } ;
struct mmc_ctx {struct task_struct* task; } ;



__attribute__((used)) static inline bool mmc_ctx_matches(struct mmc_host *host, struct mmc_ctx *ctx,
       struct task_struct *task)
{
 return host->claimer == ctx ||
        (!ctx && task && host->claimer->task == task);
}
