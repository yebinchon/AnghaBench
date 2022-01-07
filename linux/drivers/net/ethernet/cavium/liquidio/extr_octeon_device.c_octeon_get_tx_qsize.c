
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int iq; } ;
struct octeon_device {TYPE_2__** instr_queue; TYPE_1__ io_qmask; } ;
struct TYPE_4__ {int max_count; } ;


 int BIT_ULL (size_t) ;
 size_t MAX_OCTEON_INSTR_QUEUES (struct octeon_device*) ;

int octeon_get_tx_qsize(struct octeon_device *oct, u32 q_no)

{
 if (oct && (q_no < MAX_OCTEON_INSTR_QUEUES(oct)) &&
     (oct->io_qmask.iq & BIT_ULL(q_no)))
  return oct->instr_queue[q_no]->max_count;

 return -1;
}
