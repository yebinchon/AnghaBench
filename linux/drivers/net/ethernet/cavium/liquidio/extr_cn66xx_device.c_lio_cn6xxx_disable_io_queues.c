
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int iq; int oq; } ;
struct octeon_device {TYPE_1__ io_qmask; } ;


 int BIT_ULL (int) ;
 int CN6XXX_SLI_IQ_DOORBELL (int) ;
 int CN6XXX_SLI_OQ_PKTS_CREDIT (int) ;
 int CN6XXX_SLI_OQ_PKTS_SENT (int) ;
 int CN6XXX_SLI_PKT_CNT_INT ;
 int CN6XXX_SLI_PKT_INSTR_ENB ;
 int CN6XXX_SLI_PKT_OUT_ENB ;
 int CN6XXX_SLI_PKT_TIME_INT ;
 int CN6XXX_SLI_PORT_IN_RST_IQ ;
 int CN6XXX_SLI_PORT_IN_RST_OQ ;
 int HZ ;
 int MAX_OCTEON_INSTR_QUEUES (struct octeon_device*) ;
 int MAX_OCTEON_OUTPUT_QUEUES (struct octeon_device*) ;
 int octeon_read_csr (struct octeon_device*,int ) ;
 int octeon_write_csr (struct octeon_device*,int ,int) ;
 int schedule_timeout_uninterruptible (int) ;

void lio_cn6xxx_disable_io_queues(struct octeon_device *oct)
{
 int i;
 u32 mask, loop = HZ;
 u32 d32;


 mask = octeon_read_csr(oct, CN6XXX_SLI_PKT_INSTR_ENB);
 mask ^= oct->io_qmask.iq;
 octeon_write_csr(oct, CN6XXX_SLI_PKT_INSTR_ENB, mask);


 mask = (u32)oct->io_qmask.iq;
 d32 = octeon_read_csr(oct, CN6XXX_SLI_PORT_IN_RST_IQ);
 while (((d32 & mask) != mask) && loop--) {
  d32 = octeon_read_csr(oct, CN6XXX_SLI_PORT_IN_RST_IQ);
  schedule_timeout_uninterruptible(1);
 }


 for (i = 0; i < MAX_OCTEON_INSTR_QUEUES(oct); i++) {
  if (!(oct->io_qmask.iq & BIT_ULL(i)))
   continue;
  octeon_write_csr(oct, CN6XXX_SLI_IQ_DOORBELL(i), 0xFFFFFFFF);
  d32 = octeon_read_csr(oct, CN6XXX_SLI_IQ_DOORBELL(i));
 }


 mask = octeon_read_csr(oct, CN6XXX_SLI_PKT_OUT_ENB);
 mask ^= oct->io_qmask.oq;
 octeon_write_csr(oct, CN6XXX_SLI_PKT_OUT_ENB, mask);


 loop = HZ;
 mask = (u32)oct->io_qmask.oq;
 d32 = octeon_read_csr(oct, CN6XXX_SLI_PORT_IN_RST_OQ);
 while (((d32 & mask) != mask) && loop--) {
  d32 = octeon_read_csr(oct, CN6XXX_SLI_PORT_IN_RST_OQ);
  schedule_timeout_uninterruptible(1);
 }
 ;


 for (i = 0; i < MAX_OCTEON_OUTPUT_QUEUES(oct); i++) {
  if (!(oct->io_qmask.oq & BIT_ULL(i)))
   continue;
  octeon_write_csr(oct, CN6XXX_SLI_OQ_PKTS_CREDIT(i), 0xFFFFFFFF);
  d32 = octeon_read_csr(oct, CN6XXX_SLI_OQ_PKTS_CREDIT(i));

  d32 = octeon_read_csr(oct, CN6XXX_SLI_OQ_PKTS_SENT(i));
  octeon_write_csr(oct, CN6XXX_SLI_OQ_PKTS_SENT(i), d32);
 }

 d32 = octeon_read_csr(oct, CN6XXX_SLI_PKT_CNT_INT);
 if (d32)
  octeon_write_csr(oct, CN6XXX_SLI_PKT_CNT_INT, d32);

 d32 = octeon_read_csr(oct, CN6XXX_SLI_PKT_TIME_INT);
 if (d32)
  octeon_write_csr(oct, CN6XXX_SLI_PKT_TIME_INT, d32);
}
