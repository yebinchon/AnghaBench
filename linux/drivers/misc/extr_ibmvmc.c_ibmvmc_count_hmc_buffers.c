
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct ibmvmc_buffer {scalar_t__ free; scalar_t__ valid; } ;
struct TYPE_4__ {int lock; struct ibmvmc_buffer* buffer; } ;
struct TYPE_3__ {size_t max_hmc_index; } ;


 TYPE_2__* hmcs ;
 TYPE_1__ ibmvmc ;
 unsigned long ibmvmc_max_buf_pool_size ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ibmvmc_count_hmc_buffers(u8 hmc_index, unsigned int *valid,
         unsigned int *free)
{
 struct ibmvmc_buffer *buffer;
 unsigned long i;
 unsigned long flags;

 if (hmc_index > ibmvmc.max_hmc_index)
  return;

 if (!valid || !free)
  return;

 *valid = 0; *free = 0;

 buffer = hmcs[hmc_index].buffer;
 spin_lock_irqsave(&hmcs[hmc_index].lock, flags);

 for (i = 0; i < ibmvmc_max_buf_pool_size; i++) {
  if (buffer[i].valid) {
   *valid = *valid + 1;
   if (buffer[i].free)
    *free = *free + 1;
  }
 }

 spin_unlock_irqrestore(&hmcs[hmc_index].lock, flags);
}
