
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_fcoe_ddp_pool {int * pool; } ;
struct ixgbe_fcoe {int ddp_pool; } ;


 int dma_pool_destroy (int *) ;
 struct ixgbe_fcoe_ddp_pool* per_cpu_ptr (int ,unsigned int) ;

__attribute__((used)) static void ixgbe_fcoe_dma_pool_free(struct ixgbe_fcoe *fcoe, unsigned int cpu)
{
 struct ixgbe_fcoe_ddp_pool *ddp_pool;

 ddp_pool = per_cpu_ptr(fcoe->ddp_pool, cpu);
 dma_pool_destroy(ddp_pool->pool);
 ddp_pool->pool = ((void*)0);
}
