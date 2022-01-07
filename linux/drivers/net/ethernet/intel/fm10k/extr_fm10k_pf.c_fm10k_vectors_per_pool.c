
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int num_pools; } ;
struct fm10k_hw {TYPE_1__ iov; } ;


 int FM10K_MAX_VECTORS_POOL ;

__attribute__((used)) static u16 fm10k_vectors_per_pool(struct fm10k_hw *hw)
{
 u16 num_pools = hw->iov.num_pools;

 return (num_pools > 32) ? 8 : (num_pools > 16) ? 16 :
        FM10K_MAX_VECTORS_POOL;
}
