
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_ce_pipe {TYPE_1__* ops; struct ath10k* ar; } ;
struct ath10k_ce {int ce_lock; } ;
struct ath10k {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* ce_rx_post_buf ) (struct ath10k_ce_pipe*,void*,int ) ;} ;


 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ath10k_ce_pipe*,void*,int ) ;

int ath10k_ce_rx_post_buf(struct ath10k_ce_pipe *pipe, void *ctx,
     dma_addr_t paddr)
{
 struct ath10k *ar = pipe->ar;
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 int ret;

 spin_lock_bh(&ce->ce_lock);
 ret = pipe->ops->ce_rx_post_buf(pipe, ctx, paddr);
 spin_unlock_bh(&ce->ce_lock);

 return ret;
}
