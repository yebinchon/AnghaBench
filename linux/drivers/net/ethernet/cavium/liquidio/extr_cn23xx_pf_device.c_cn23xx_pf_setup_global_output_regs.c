
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ pf_srn; scalar_t__ num_pf_rings; } ;
struct octeon_device {scalar_t__ rev_id; TYPE_2__* mmio; scalar_t__ pf_num; TYPE_1__ sriov_info; scalar_t__ chip; } ;
struct octeon_cn23xx_pf {int conf; } ;
struct TYPE_4__ {scalar_t__ hw_addr; } ;


 scalar_t__ CFG_GET_IS_SLI_BP_ON (int ) ;
 int CFG_GET_OQ_INTR_PKT (int ) ;
 scalar_t__ CFG_GET_OQ_INTR_TIME (int ) ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_BMODE ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_DPTR ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_ES ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_ES_P ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_IPTR ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_NSR ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_NSR_P ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_ROR ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_ROR_P ;
 int CN23XX_SLI_GBL_CONTROL ;
 int CN23XX_SLI_OQ_PKT_CONTROL (scalar_t__) ;
 int CN23XX_SLI_OQ_PKT_INT_LEVELS (scalar_t__) ;
 int CN23XX_SLI_OQ_WMARK ;
 int CN23XX_SLI_OUT_BP_EN2_W1S ;
 int CN23XX_SLI_OUT_BP_EN_W1S ;
 scalar_t__ OCTEON_CN23XX_REV_1_0 ;
 scalar_t__ OCTEON_CN23XX_REV_1_1 ;
 int cn23xx_pf_get_oq_ticks (struct octeon_device*,scalar_t__) ;
 scalar_t__ octeon_read_csr (struct octeon_device*,int ) ;
 int octeon_write_csr (struct octeon_device*,int ,scalar_t__) ;
 int octeon_write_csr64 (struct octeon_device*,int,int) ;
 int readq (int *) ;
 int writeq (int,int *) ;

__attribute__((used)) static void cn23xx_pf_setup_global_output_regs(struct octeon_device *oct)
{
 u32 reg_val;
 u32 q_no, ern, srn;
 u64 time_threshold;

 struct octeon_cn23xx_pf *cn23xx = (struct octeon_cn23xx_pf *)oct->chip;

 srn = oct->sriov_info.pf_srn;
 ern = srn + oct->sriov_info.num_pf_rings;

 if (CFG_GET_IS_SLI_BP_ON(cn23xx->conf)) {
  octeon_write_csr64(oct, CN23XX_SLI_OQ_WMARK, 32);
 } else {

  octeon_write_csr64(oct, CN23XX_SLI_OQ_WMARK, 0);
 }

 for (q_no = srn; q_no < ern; q_no++) {
  reg_val = octeon_read_csr(oct, CN23XX_SLI_OQ_PKT_CONTROL(q_no));


  reg_val &= ~CN23XX_PKT_OUTPUT_CTL_IPTR;


  reg_val |= CN23XX_PKT_OUTPUT_CTL_DPTR;


  reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_BMODE);





  reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_ROR_P);
  reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_NSR_P);




  reg_val |= (CN23XX_PKT_OUTPUT_CTL_ES_P);





  reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_ROR);
  reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_NSR);

  reg_val |= (CN23XX_PKT_OUTPUT_CTL_ES);


  octeon_write_csr(oct, CN23XX_SLI_OQ_PKT_CONTROL(q_no), reg_val);






  time_threshold = cn23xx_pf_get_oq_ticks(
      oct, (u32)CFG_GET_OQ_INTR_TIME(cn23xx->conf));

  octeon_write_csr64(oct, CN23XX_SLI_OQ_PKT_INT_LEVELS(q_no),
       (CFG_GET_OQ_INTR_PKT(cn23xx->conf) |
        (time_threshold << 32)));
 }


 writeq(0x40, (u8 *)oct->mmio[0].hw_addr + CN23XX_SLI_OQ_WMARK);





 if ((oct->rev_id == OCTEON_CN23XX_REV_1_0) ||
     (oct->rev_id == OCTEON_CN23XX_REV_1_1))
  writeq(readq((u8 *)oct->mmio[0].hw_addr +
         CN23XX_SLI_GBL_CONTROL) | 0x2,
         (u8 *)oct->mmio[0].hw_addr + CN23XX_SLI_GBL_CONTROL);


 if (oct->pf_num)
  writeq(0xffffffffffffffffULL,
         (u8 *)oct->mmio[0].hw_addr + CN23XX_SLI_OUT_BP_EN2_W1S);
 else
  writeq(0xffffffffffffffffULL,
         (u8 *)oct->mmio[0].hw_addr + CN23XX_SLI_OUT_BP_EN_W1S);
}
