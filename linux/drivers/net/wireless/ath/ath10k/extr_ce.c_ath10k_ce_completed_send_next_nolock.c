
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_ce_pipe {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* ce_completed_send_next_nolock ) (struct ath10k_ce_pipe*,void**) ;} ;


 int stub1 (struct ath10k_ce_pipe*,void**) ;

int ath10k_ce_completed_send_next_nolock(struct ath10k_ce_pipe *ce_state,
      void **per_transfer_contextp)
{
 return ce_state->ops->ce_completed_send_next_nolock(ce_state,
           per_transfer_contextp);
}
