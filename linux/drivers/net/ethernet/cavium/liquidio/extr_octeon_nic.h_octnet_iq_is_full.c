
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct octeon_device {TYPE_1__** instr_queue; } ;
struct TYPE_2__ {int max_count; int instr_pending; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline int octnet_iq_is_full(struct octeon_device *oct, u32 q_no)
{
 return ((u32)atomic_read(&oct->instr_queue[q_no]->instr_pending)
  >= (oct->instr_queue[q_no]->max_count - 2));
}
