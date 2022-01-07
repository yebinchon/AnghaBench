
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int oq; } ;
struct octeon_device {TYPE_2__** droq; TYPE_1__ io_qmask; } ;
struct TYPE_4__ {int max_count; } ;


 int BIT_ULL (size_t) ;
 size_t MAX_OCTEON_OUTPUT_QUEUES (struct octeon_device*) ;

int octeon_get_rx_qsize(struct octeon_device *oct, u32 q_no)
{
 if (oct && (q_no < MAX_OCTEON_OUTPUT_QUEUES(oct)) &&
     (oct->io_qmask.oq & BIT_ULL(q_no)))
  return oct->droq[q_no]->max_count;
 return -1;
}
