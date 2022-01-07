
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oq; } ;
struct octeon_device {TYPE_2__** droq; TYPE_1__ io_qmask; } ;
struct TYPE_4__ {int pkts_pending; } ;


 int BIT_ULL (int) ;
 int MAX_OCTEON_OUTPUT_QUEUES (struct octeon_device*) ;
 scalar_t__ atomic_read (int *) ;
 int schedule_timeout_uninterruptible (int) ;

int lio_wait_for_clean_oq(struct octeon_device *oct)
{
 int retry = 100, pending_pkts = 0;
 int idx;

 do {
  pending_pkts = 0;

  for (idx = 0; idx < MAX_OCTEON_OUTPUT_QUEUES(oct); idx++) {
   if (!(oct->io_qmask.oq & BIT_ULL(idx)))
    continue;
   pending_pkts +=
    atomic_read(&oct->droq[idx]->pkts_pending);
  }

  if (pending_pkts > 0)
   schedule_timeout_uninterruptible(1);

 } while (retry-- && pending_pkts);

 return pending_pkts;
}
