
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct octeon_droq {int * pkts_credit_reg; int * pkts_sent_reg; int buffer_size; int max_count; int desc_ring_dma; } ;
struct octeon_device {TYPE_1__* mmio; struct octeon_droq** droq; } ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;


 int CN23XX_VF_SLI_OQ_BASE_ADDR64 (size_t) ;
 int CN23XX_VF_SLI_OQ_BUFF_INFO_SIZE (size_t) ;
 int CN23XX_VF_SLI_OQ_PKTS_CREDIT (size_t) ;
 int CN23XX_VF_SLI_OQ_PKTS_SENT (size_t) ;
 int CN23XX_VF_SLI_OQ_SIZE (size_t) ;
 int octeon_write_csr (struct octeon_device*,int ,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int ) ;

__attribute__((used)) static void cn23xx_setup_vf_oq_regs(struct octeon_device *oct, u32 oq_no)
{
 struct octeon_droq *droq = oct->droq[oq_no];

 octeon_write_csr64(oct, CN23XX_VF_SLI_OQ_BASE_ADDR64(oq_no),
      droq->desc_ring_dma);
 octeon_write_csr(oct, CN23XX_VF_SLI_OQ_SIZE(oq_no), droq->max_count);

 octeon_write_csr(oct, CN23XX_VF_SLI_OQ_BUFF_INFO_SIZE(oq_no),
    droq->buffer_size);


 droq->pkts_sent_reg =
     (u8 *)oct->mmio[0].hw_addr + CN23XX_VF_SLI_OQ_PKTS_SENT(oq_no);
 droq->pkts_credit_reg =
     (u8 *)oct->mmio[0].hw_addr + CN23XX_VF_SLI_OQ_PKTS_CREDIT(oq_no);
}
