
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_alloc_pool {int * page; } ;
struct bnx2x {int dummy; } ;


 int put_page (int *) ;

__attribute__((used)) static inline void bnx2x_free_rx_mem_pool(struct bnx2x *bp,
       struct bnx2x_alloc_pool *pool)
{
 if (!pool->page)
  return;

 put_page(pool->page);

 pool->page = ((void*)0);
}
