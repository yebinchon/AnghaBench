
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_gru_mq_uv {unsigned long order; scalar_t__ address; int irq; } ;


 int BUG_ON (int) ;
 int PAGE_SHIFT ;
 int free_irq (int ,int *) ;
 int free_pages (unsigned long,int) ;
 int kfree (struct xpc_gru_mq_uv*) ;
 int xpSuccess ;
 int xp_pa (scalar_t__) ;
 int xp_restrict_memprotect (int ,unsigned int) ;
 int xpc_gru_mq_watchlist_free_uv (struct xpc_gru_mq_uv*) ;
 int xpc_release_gru_mq_irq_uv (struct xpc_gru_mq_uv*) ;

__attribute__((used)) static void
xpc_destroy_gru_mq_uv(struct xpc_gru_mq_uv *mq)
{
 unsigned int mq_size;
 int pg_order;
 int ret;


 mq_size = 1UL << mq->order;
 ret = xp_restrict_memprotect(xp_pa(mq->address), mq_size);
 BUG_ON(ret != xpSuccess);


 free_irq(mq->irq, ((void*)0));
 xpc_release_gru_mq_irq_uv(mq);


 xpc_gru_mq_watchlist_free_uv(mq);

 pg_order = mq->order - PAGE_SHIFT;
 free_pages((unsigned long)mq->address, pg_order);

 kfree(mq);
}
