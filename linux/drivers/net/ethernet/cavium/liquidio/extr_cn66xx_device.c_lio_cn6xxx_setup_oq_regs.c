
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct octeon_droq {size_t max_count; size_t buffer_size; scalar_t__ pkts_credit_reg; scalar_t__ pkts_sent_reg; int desc_ring_dma; } ;
struct octeon_device {TYPE_1__* mmio; struct octeon_droq** droq; } ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;


 int CN6XXX_SLI_OQ_BASE_ADDR64 (size_t) ;
 int CN6XXX_SLI_OQ_BUFF_INFO_SIZE (size_t) ;
 scalar_t__ CN6XXX_SLI_OQ_PKTS_CREDIT (size_t) ;
 scalar_t__ CN6XXX_SLI_OQ_PKTS_SENT (size_t) ;
 int CN6XXX_SLI_OQ_SIZE (size_t) ;
 int CN6XXX_SLI_PKT_CNT_INT_ENB ;
 int CN6XXX_SLI_PKT_TIME_INT_ENB ;
 size_t octeon_read_csr (struct octeon_device*,int ) ;
 int octeon_write_csr (struct octeon_device*,int ,size_t) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int ) ;

void lio_cn6xxx_setup_oq_regs(struct octeon_device *oct, u32 oq_no)
{
 u32 intr;
 struct octeon_droq *droq = oct->droq[oq_no];

 octeon_write_csr64(oct, CN6XXX_SLI_OQ_BASE_ADDR64(oq_no),
      droq->desc_ring_dma);
 octeon_write_csr(oct, CN6XXX_SLI_OQ_SIZE(oq_no), droq->max_count);

 octeon_write_csr(oct, CN6XXX_SLI_OQ_BUFF_INFO_SIZE(oq_no),
    droq->buffer_size);


 droq->pkts_sent_reg =
  oct->mmio[0].hw_addr + CN6XXX_SLI_OQ_PKTS_SENT(oq_no);
 droq->pkts_credit_reg =
  oct->mmio[0].hw_addr + CN6XXX_SLI_OQ_PKTS_CREDIT(oq_no);


 intr = octeon_read_csr(oct, CN6XXX_SLI_PKT_TIME_INT_ENB);
 intr |= (1 << oq_no);
 octeon_write_csr(oct, CN6XXX_SLI_PKT_TIME_INT_ENB, intr);


 intr = octeon_read_csr(oct, CN6XXX_SLI_PKT_CNT_INT_ENB);
 intr |= (1 << oq_no);
 octeon_write_csr(oct, CN6XXX_SLI_PKT_CNT_INT_ENB, intr);
}
