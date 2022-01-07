
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_bm_pool {scalar_t__ frag_size; } ;


 int GFP_ATOMIC ;
 scalar_t__ PAGE_SIZE ;
 void* kmalloc (scalar_t__,int ) ;
 scalar_t__ likely (int) ;
 void* netdev_alloc_frag (scalar_t__) ;

__attribute__((used)) static void *mvpp2_frag_alloc(const struct mvpp2_bm_pool *pool)
{
 if (likely(pool->frag_size <= PAGE_SIZE))
  return netdev_alloc_frag(pool->frag_size);
 else
  return kmalloc(pool->frag_size, GFP_ATOMIC);
}
