
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct octeon_device {scalar_t__ num_oqs; } ;


 int CN23XX_INTR_CINT_ENB ;
 int CN23XX_INTR_MBOX_ENB ;
 int CN23XX_PKT_IN_DONE_CNT_MASK ;
 int CN23XX_VF_SLI_IQ_INSTR_COUNT64 (scalar_t__) ;
 int CN23XX_VF_SLI_OQ_PKT_INT_LEVELS (scalar_t__) ;
 int CN23XX_VF_SLI_PKT_MBOX_INT (int ) ;
 int OCTEON_INPUT_INTR ;
 int OCTEON_MBOX_INTR ;
 int OCTEON_OUTPUT_INTR ;
 int octeon_read_csr64 (struct octeon_device*,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;

__attribute__((used)) static void cn23xx_disable_vf_interrupt(struct octeon_device *oct, u8 intr_flag)
{
 u32 q_no;

 if (intr_flag & OCTEON_OUTPUT_INTR) {
  for (q_no = 0; q_no < oct->num_oqs; q_no++) {

   octeon_write_csr64(
       oct, CN23XX_VF_SLI_OQ_PKT_INT_LEVELS(q_no),
       0x3fffffffffffff);
  }
 }
 if (intr_flag & OCTEON_INPUT_INTR) {
  for (q_no = 0; q_no < oct->num_oqs; q_no++) {
   octeon_write_csr64(
       oct, CN23XX_VF_SLI_IQ_INSTR_COUNT64(q_no),
       (octeon_read_csr64(
     oct, CN23XX_VF_SLI_IQ_INSTR_COUNT64(q_no)) &
        ~(CN23XX_INTR_CINT_ENB |
          CN23XX_PKT_IN_DONE_CNT_MASK)));
  }
 }

 if (intr_flag & OCTEON_MBOX_INTR) {
  octeon_write_csr64(
      oct, CN23XX_VF_SLI_PKT_MBOX_INT(0),
      (octeon_read_csr64(oct, CN23XX_VF_SLI_PKT_MBOX_INT(0)) &
       ~CN23XX_INTR_MBOX_ENB));
 }
}
