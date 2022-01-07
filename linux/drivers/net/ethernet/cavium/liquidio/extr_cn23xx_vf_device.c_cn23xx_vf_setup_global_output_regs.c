
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ rings_per_vf; } ;
struct octeon_device {TYPE_1__ sriov_info; } ;


 scalar_t__ CN23XX_PKT_OUTPUT_CTL_BMODE ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_DPTR ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_ES ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_ES_P ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_IPTR ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_NSR ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_NSR_P ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_ROR ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_ROR_P ;
 int CN23XX_VF_SLI_OQ_PKTS_CREDIT (scalar_t__) ;
 int CN23XX_VF_SLI_OQ_PKTS_SENT (scalar_t__) ;
 int CN23XX_VF_SLI_OQ_PKT_CONTROL (scalar_t__) ;
 scalar_t__ octeon_read_csr (struct octeon_device*,int ) ;
 int octeon_write_csr (struct octeon_device*,int ,scalar_t__) ;

__attribute__((used)) static void cn23xx_vf_setup_global_output_regs(struct octeon_device *oct)
{
 u32 reg_val;
 u32 q_no;

 for (q_no = 0; q_no < (oct->sriov_info.rings_per_vf); q_no++) {
  octeon_write_csr(oct, CN23XX_VF_SLI_OQ_PKTS_CREDIT(q_no),
     0xFFFFFFFF);

  reg_val =
      octeon_read_csr(oct, CN23XX_VF_SLI_OQ_PKTS_SENT(q_no));

  reg_val &= 0xEFFFFFFFFFFFFFFFL;

  reg_val =
      octeon_read_csr(oct, CN23XX_VF_SLI_OQ_PKT_CONTROL(q_no));


  reg_val &= ~CN23XX_PKT_OUTPUT_CTL_IPTR;


  reg_val |= CN23XX_PKT_OUTPUT_CTL_DPTR;


  reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_BMODE);




  reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_ROR_P);
  reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_NSR_P);




  reg_val |= (CN23XX_PKT_OUTPUT_CTL_ES_P);




  reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_ROR);
  reg_val &= ~(CN23XX_PKT_OUTPUT_CTL_NSR);

  reg_val |= (CN23XX_PKT_OUTPUT_CTL_ES);


  octeon_write_csr(oct, CN23XX_VF_SLI_OQ_PKT_CONTROL(q_no),
     reg_val);
 }
}
