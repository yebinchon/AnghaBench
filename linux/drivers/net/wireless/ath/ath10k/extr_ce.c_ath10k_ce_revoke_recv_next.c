
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_ce_pipe {TYPE_1__* ops; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* ce_revoke_recv_next ) (struct ath10k_ce_pipe*,void**,int *) ;} ;


 int stub1 (struct ath10k_ce_pipe*,void**,int *) ;

int ath10k_ce_revoke_recv_next(struct ath10k_ce_pipe *ce_state,
          void **per_transfer_contextp,
          dma_addr_t *bufferp)
{
 return ce_state->ops->ce_revoke_recv_next(ce_state,
        per_transfer_contextp,
        bufferp);
}
