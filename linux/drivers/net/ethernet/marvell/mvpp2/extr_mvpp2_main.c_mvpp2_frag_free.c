
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_bm_pool {scalar_t__ frag_size; } ;


 scalar_t__ PAGE_SIZE ;
 int kfree (void*) ;
 scalar_t__ likely (int) ;
 int skb_free_frag (void*) ;

__attribute__((used)) static void mvpp2_frag_free(const struct mvpp2_bm_pool *pool, void *data)
{
 if (likely(pool->frag_size <= PAGE_SIZE))
  skb_free_frag(data);
 else
  kfree(data);
}
