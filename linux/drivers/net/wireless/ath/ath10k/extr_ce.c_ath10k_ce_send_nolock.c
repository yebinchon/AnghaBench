
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_ce_pipe {TYPE_1__* ops; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* ce_send_nolock ) (struct ath10k_ce_pipe*,void*,int ,unsigned int,unsigned int,unsigned int) ;} ;


 int stub1 (struct ath10k_ce_pipe*,void*,int ,unsigned int,unsigned int,unsigned int) ;

int ath10k_ce_send_nolock(struct ath10k_ce_pipe *ce_state,
     void *per_transfer_context,
     dma_addr_t buffer,
     unsigned int nbytes,
     unsigned int transfer_id,
     unsigned int flags)
{
 return ce_state->ops->ce_send_nolock(ce_state, per_transfer_context,
        buffer, nbytes, transfer_id, flags);
}
