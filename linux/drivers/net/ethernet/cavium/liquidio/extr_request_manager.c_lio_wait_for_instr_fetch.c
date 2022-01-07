
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int iq; } ;
struct octeon_device {TYPE_1__** instr_queue; TYPE_2__ io_qmask; } ;
struct TYPE_3__ {int instr_pending; } ;


 int BIT_ULL (int) ;
 int MAX_OCTEON_INSTR_QUEUES (struct octeon_device*) ;
 int __check_db_timeout (struct octeon_device*,int) ;
 int atomic_read (int *) ;
 int schedule_timeout_uninterruptible (int) ;

int lio_wait_for_instr_fetch(struct octeon_device *oct)
{
 int i, retry = 1000, pending, instr_cnt = 0;

 do {
  instr_cnt = 0;

  for (i = 0; i < MAX_OCTEON_INSTR_QUEUES(oct); i++) {
   if (!(oct->io_qmask.iq & BIT_ULL(i)))
    continue;
   pending =
       atomic_read(&oct->instr_queue[i]->instr_pending);
   if (pending)
    __check_db_timeout(oct, i);
   instr_cnt += pending;
  }

  if (instr_cnt == 0)
   break;

  schedule_timeout_uninterruptible(1);

 } while (retry-- && instr_cnt);

 return instr_cnt;
}
