
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_device_priv {int droq_tasklet; } ;
struct TYPE_2__ {int oq; } ;
struct octeon_device {int * droq; TYPE_1__ io_qmask; scalar_t__ priv; } ;


 int BIT_ULL (int) ;
 int MAX_IO_PENDING_PKT_COUNT ;
 int MAX_OCTEON_OUTPUT_QUEUES (struct octeon_device*) ;
 scalar_t__ octeon_droq_check_hw_for_pkts (int ) ;
 int schedule_timeout_uninterruptible (int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int lio_wait_for_oq_pkts(struct octeon_device *oct)
{
 struct octeon_device_priv *oct_priv =
     (struct octeon_device_priv *)oct->priv;
 int retry = MAX_IO_PENDING_PKT_COUNT;
 int pkt_cnt = 0, pending_pkts;
 int i;

 do {
  pending_pkts = 0;

  for (i = 0; i < MAX_OCTEON_OUTPUT_QUEUES(oct); i++) {
   if (!(oct->io_qmask.oq & BIT_ULL(i)))
    continue;
   pkt_cnt += octeon_droq_check_hw_for_pkts(oct->droq[i]);
  }
  if (pkt_cnt > 0) {
   pending_pkts += pkt_cnt;
   tasklet_schedule(&oct_priv->droq_tasklet);
  }
  pkt_cnt = 0;
  schedule_timeout_uninterruptible(1);

 } while (retry-- && pending_pkts);

 return pkt_cnt;
}
