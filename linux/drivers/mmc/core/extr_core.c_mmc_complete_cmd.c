
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int cmd_completion; scalar_t__ cap_cmd_during_tfr; } ;


 int complete_all (int *) ;
 int completion_done (int *) ;

__attribute__((used)) static inline void mmc_complete_cmd(struct mmc_request *mrq)
{
 if (mrq->cap_cmd_during_tfr && !completion_done(&mrq->cmd_completion))
  complete_all(&mrq->cmd_completion);
}
