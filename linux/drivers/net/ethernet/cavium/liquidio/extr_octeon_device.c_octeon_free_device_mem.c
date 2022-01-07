
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oq; int iq; } ;
struct octeon_device {int octeon_id; struct octeon_device** instr_queue; TYPE_1__ io_qmask; struct octeon_device** droq; } ;


 int BIT_ULL (int) ;
 int MAX_OCTEON_INSTR_QUEUES (struct octeon_device*) ;
 int MAX_OCTEON_OUTPUT_QUEUES (struct octeon_device*) ;
 int ** octeon_device ;
 int octeon_device_count ;
 int vfree (struct octeon_device*) ;

void octeon_free_device_mem(struct octeon_device *oct)
{
 int i;

 for (i = 0; i < MAX_OCTEON_OUTPUT_QUEUES(oct); i++) {
  if (oct->io_qmask.oq & BIT_ULL(i))
   vfree(oct->droq[i]);
 }

 for (i = 0; i < MAX_OCTEON_INSTR_QUEUES(oct); i++) {
  if (oct->io_qmask.iq & BIT_ULL(i))
   vfree(oct->instr_queue[i]);
 }

 i = oct->octeon_id;
 vfree(oct);

 octeon_device[i] = ((void*)0);
 octeon_device_count--;
}
