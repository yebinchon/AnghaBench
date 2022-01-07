
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int pf_srn; } ;
struct octeon_device {int num_iqs; TYPE_1__ sriov_info; } ;


 int BIT_ULL (int) ;
 int CN23XX_PKT_INPUT_CTL_RING_ENB ;
 int CN23XX_PKT_INPUT_CTL_RST ;
 int CN23XX_SLI_IQ_DOORBELL (int) ;
 int CN23XX_SLI_IQ_PKT_CONTROL64 (int) ;
 int CN23XX_SLI_OQ_PKTS_CREDIT (int) ;
 int CN23XX_SLI_OQ_PKTS_SENT (int) ;
 int CN23XX_SLI_PKT_IOQ_RING_RST ;
 int HZ ;
 int READ_ONCE (int) ;
 int WRITE_ONCE (int,int) ;
 int octeon_read_csr (struct octeon_device*,int ) ;
 int octeon_read_csr64 (struct octeon_device*,int ) ;
 int octeon_write_csr (struct octeon_device*,int ,int) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static void cn23xx_disable_io_queues(struct octeon_device *oct)
{
 int q_no, loop;
 u64 d64;
 u32 d32;
 u32 srn, ern;

 srn = oct->sriov_info.pf_srn;
 ern = srn + oct->num_iqs;


 for (q_no = srn; q_no < ern; q_no++) {
  loop = HZ;


  WRITE_ONCE(d64, octeon_read_csr64(
      oct, CN23XX_SLI_IQ_PKT_CONTROL64(q_no)));
  WRITE_ONCE(d64, READ_ONCE(d64) &
     (~(CN23XX_PKT_INPUT_CTL_RING_ENB)));
  WRITE_ONCE(d64, READ_ONCE(d64) | CN23XX_PKT_INPUT_CTL_RST);
  octeon_write_csr64(oct, CN23XX_SLI_IQ_PKT_CONTROL64(q_no),
       READ_ONCE(d64));




  WRITE_ONCE(d64, octeon_read_csr64(
     oct, CN23XX_SLI_PKT_IOQ_RING_RST));
  while (!(READ_ONCE(d64) & BIT_ULL(q_no)) && loop--) {
   WRITE_ONCE(d64, octeon_read_csr64(
     oct, CN23XX_SLI_PKT_IOQ_RING_RST));
   schedule_timeout_uninterruptible(1);
  }


  octeon_write_csr(oct, CN23XX_SLI_IQ_DOORBELL(q_no), 0xFFFFFFFF);
  while (octeon_read_csr64(oct, CN23XX_SLI_IQ_DOORBELL(q_no)) &&
         loop--) {
   schedule_timeout_uninterruptible(1);
  }
 }


 for (q_no = srn; q_no < ern; q_no++) {
  loop = HZ;





  WRITE_ONCE(d64, octeon_read_csr64(
     oct, CN23XX_SLI_PKT_IOQ_RING_RST));
  while (!(READ_ONCE(d64) & BIT_ULL(q_no)) && loop--) {
   WRITE_ONCE(d64, octeon_read_csr64(
     oct, CN23XX_SLI_PKT_IOQ_RING_RST));
   schedule_timeout_uninterruptible(1);
  }


  octeon_write_csr(oct, CN23XX_SLI_OQ_PKTS_CREDIT(q_no),
     0xFFFFFFFF);
  while (octeon_read_csr64(oct,
      CN23XX_SLI_OQ_PKTS_CREDIT(q_no)) &&
         loop--) {
   schedule_timeout_uninterruptible(1);
  }


  WRITE_ONCE(d32, octeon_read_csr(
     oct, CN23XX_SLI_OQ_PKTS_SENT(q_no)));
  octeon_write_csr(oct, CN23XX_SLI_OQ_PKTS_SENT(q_no),
     READ_ONCE(d32));
 }
}
