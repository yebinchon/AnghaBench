
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct octeon_device_priv {int droq_tasklet; } ;
struct TYPE_4__ {int pf_srn; } ;
struct TYPE_3__ {int oq; } ;
struct octeon_device {TYPE_2__ sriov_info; scalar_t__ msix_on; int * droq; TYPE_1__ io_qmask; scalar_t__ priv; } ;


 int BIT_ULL (int) ;
 int CN23XX_SLI_OQ_PKTS_SENT (int) ;
 int CN23XX_SLI_OQ_PKT_INT_LEVELS (int) ;
 int MAX_OCTEON_OUTPUT_QUEUES (struct octeon_device*) ;
 int MAX_PACKET_BUDGET ;
 scalar_t__ OCTEON_CN23XX_PF (struct octeon_device*) ;
 int lio_enable_irq (int ,int *) ;
 int octeon_droq_process_packets (struct octeon_device*,int ,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void octeon_droq_bh(unsigned long pdev)
{
 int q_no;
 int reschedule = 0;
 struct octeon_device *oct = (struct octeon_device *)pdev;
 struct octeon_device_priv *oct_priv =
  (struct octeon_device_priv *)oct->priv;

 for (q_no = 0; q_no < MAX_OCTEON_OUTPUT_QUEUES(oct); q_no++) {
  if (!(oct->io_qmask.oq & BIT_ULL(q_no)))
   continue;
  reschedule |= octeon_droq_process_packets(oct, oct->droq[q_no],
         MAX_PACKET_BUDGET);
  lio_enable_irq(oct->droq[q_no], ((void*)0));

  if (OCTEON_CN23XX_PF(oct) && oct->msix_on) {



   int adjusted_q_no = q_no + oct->sriov_info.pf_srn;

   octeon_write_csr64(
       oct, CN23XX_SLI_OQ_PKT_INT_LEVELS(adjusted_q_no),
       0x5700000040ULL);
   octeon_write_csr64(
       oct, CN23XX_SLI_OQ_PKTS_SENT(adjusted_q_no), 0);
  }
 }

 if (reschedule)
  tasklet_schedule(&oct_priv->droq_tasklet);
}
