
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef size_t u32 ;
struct octeon_droq {int desc_ring_dma; size_t max_count; size_t buffer_size; int * pkts_credit_reg; int * pkts_sent_reg; } ;
struct TYPE_3__ {scalar_t__ pf_srn; } ;
struct octeon_device {int msix_on; TYPE_2__* mmio; TYPE_1__ sriov_info; scalar_t__ chip; struct octeon_droq** droq; } ;
struct octeon_cn23xx_pf {int conf; } ;
struct TYPE_4__ {scalar_t__ hw_addr; } ;


 scalar_t__ CFG_GET_OQ_INTR_PKT (int ) ;
 scalar_t__ CFG_GET_OQ_INTR_TIME (int ) ;
 size_t CN23XX_PKT_OUTPUT_CTL_CENB ;
 size_t CN23XX_PKT_OUTPUT_CTL_TENB ;
 int CN23XX_SLI_OQ_BASE_ADDR64 (size_t) ;
 int CN23XX_SLI_OQ_BUFF_INFO_SIZE (size_t) ;
 int CN23XX_SLI_OQ_PKTS_CREDIT (size_t) ;
 int CN23XX_SLI_OQ_PKTS_SENT (size_t) ;
 int CN23XX_SLI_OQ_PKT_CONTROL (size_t) ;
 int CN23XX_SLI_OQ_PKT_INT_LEVELS (size_t) ;
 int CN23XX_SLI_OQ_SIZE (size_t) ;
 int cn23xx_pf_get_oq_ticks (struct octeon_device*,size_t) ;
 size_t octeon_read_csr (struct octeon_device*,int ) ;
 int octeon_write_csr (struct octeon_device*,int ,size_t) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;

__attribute__((used)) static void cn23xx_setup_oq_regs(struct octeon_device *oct, u32 oq_no)
{
 u32 reg_val;
 struct octeon_droq *droq = oct->droq[oq_no];
 struct octeon_cn23xx_pf *cn23xx = (struct octeon_cn23xx_pf *)oct->chip;
 u64 time_threshold;
 u64 cnt_threshold;

 oq_no += oct->sriov_info.pf_srn;

 octeon_write_csr64(oct, CN23XX_SLI_OQ_BASE_ADDR64(oq_no),
      droq->desc_ring_dma);
 octeon_write_csr(oct, CN23XX_SLI_OQ_SIZE(oq_no), droq->max_count);

 octeon_write_csr(oct, CN23XX_SLI_OQ_BUFF_INFO_SIZE(oq_no),
    droq->buffer_size);


 droq->pkts_sent_reg =
     (u8 *)oct->mmio[0].hw_addr + CN23XX_SLI_OQ_PKTS_SENT(oq_no);
 droq->pkts_credit_reg =
     (u8 *)oct->mmio[0].hw_addr + CN23XX_SLI_OQ_PKTS_CREDIT(oq_no);

 if (!oct->msix_on) {


  reg_val =
      octeon_read_csr(oct, CN23XX_SLI_OQ_PKT_CONTROL(oq_no));
  reg_val |= CN23XX_PKT_OUTPUT_CTL_TENB;
  octeon_write_csr(oct, CN23XX_SLI_OQ_PKT_CONTROL(oq_no),
     reg_val);



  reg_val =
      octeon_read_csr(oct, CN23XX_SLI_OQ_PKT_CONTROL(oq_no));
  reg_val |= CN23XX_PKT_OUTPUT_CTL_CENB;
  octeon_write_csr(oct, CN23XX_SLI_OQ_PKT_CONTROL(oq_no),
     reg_val);
 } else {
  time_threshold = cn23xx_pf_get_oq_ticks(
      oct, (u32)CFG_GET_OQ_INTR_TIME(cn23xx->conf));
  cnt_threshold = (u32)CFG_GET_OQ_INTR_PKT(cn23xx->conf);

  octeon_write_csr64(
      oct, CN23XX_SLI_OQ_PKT_INT_LEVELS(oq_no),
      ((time_threshold << 32 | cnt_threshold)));
 }
}
