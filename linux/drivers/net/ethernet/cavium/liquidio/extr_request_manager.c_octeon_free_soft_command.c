
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_soft_command {int node; } ;
struct TYPE_2__ {int lock; int alloc_buf_count; int head; } ;
struct octeon_device {TYPE_1__ sc_buf_pool; } ;


 int atomic_dec (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void octeon_free_soft_command(struct octeon_device *oct,
         struct octeon_soft_command *sc)
{
 spin_lock_bh(&oct->sc_buf_pool.lock);

 list_add_tail(&sc->node, &oct->sc_buf_pool.head);

 atomic_dec(&oct->sc_buf_pool.alloc_buf_count);

 spin_unlock_bh(&oct->sc_buf_pool.lock);
}
