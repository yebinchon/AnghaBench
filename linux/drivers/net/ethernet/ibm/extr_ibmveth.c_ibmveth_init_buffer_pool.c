
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ibmveth_buff_pool {int size; int index; int buff_size; int threshold; int active; } ;



__attribute__((used)) static void ibmveth_init_buffer_pool(struct ibmveth_buff_pool *pool,
         u32 pool_index, u32 pool_size,
         u32 buff_size, u32 pool_active)
{
 pool->size = pool_size;
 pool->index = pool_index;
 pool->buff_size = buff_size;
 pool->threshold = pool_size * 7 / 8;
 pool->active = pool_active;
}
