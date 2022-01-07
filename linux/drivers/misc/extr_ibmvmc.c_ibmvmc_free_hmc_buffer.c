
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvmc_hmc {int lock; } ;
struct ibmvmc_buffer {int free; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ibmvmc_free_hmc_buffer(struct ibmvmc_hmc *hmc,
       struct ibmvmc_buffer *buffer)
{
 unsigned long flags;

 spin_lock_irqsave(&hmc->lock, flags);
 buffer->free = 1;
 spin_unlock_irqrestore(&hmc->lock, flags);
}
