
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int iq64B; int iq; int oq; } ;
struct octeon_device {scalar_t__ num_iqs; scalar_t__ num_oqs; TYPE_1__ io_qmask; } ;


 int BIT_ULL (scalar_t__) ;
 int CN23XX_PKT_INPUT_CTL_IS_64B ;
 int CN23XX_PKT_INPUT_CTL_RING_ENB ;
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_RING_ENB ;
 int CN23XX_VF_SLI_IQ_PKT_CONTROL64 (scalar_t__) ;
 int CN23XX_VF_SLI_OQ_PKT_CONTROL (scalar_t__) ;
 scalar_t__ octeon_read_csr (struct octeon_device*,int ) ;
 int octeon_read_csr64 (struct octeon_device*,int ) ;
 int octeon_write_csr (struct octeon_device*,int ,scalar_t__) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int ) ;

__attribute__((used)) static int cn23xx_enable_vf_io_queues(struct octeon_device *oct)
{
 u32 q_no;

 for (q_no = 0; q_no < oct->num_iqs; q_no++) {
  u64 reg_val;


  if (oct->io_qmask.iq64B & BIT_ULL(q_no)) {
   reg_val = octeon_read_csr64(
       oct, CN23XX_VF_SLI_IQ_PKT_CONTROL64(q_no));
   reg_val |= CN23XX_PKT_INPUT_CTL_IS_64B;
   octeon_write_csr64(
       oct, CN23XX_VF_SLI_IQ_PKT_CONTROL64(q_no), reg_val);
  }


  if (oct->io_qmask.iq & BIT_ULL(q_no)) {
   reg_val = octeon_read_csr64(
       oct, CN23XX_VF_SLI_IQ_PKT_CONTROL64(q_no));
   reg_val |= CN23XX_PKT_INPUT_CTL_RING_ENB;
   octeon_write_csr64(
       oct, CN23XX_VF_SLI_IQ_PKT_CONTROL64(q_no), reg_val);
  }
 }
 for (q_no = 0; q_no < oct->num_oqs; q_no++) {
  u32 reg_val;


  if (oct->io_qmask.oq & BIT_ULL(q_no)) {
   reg_val = octeon_read_csr(
       oct, CN23XX_VF_SLI_OQ_PKT_CONTROL(q_no));
   reg_val |= CN23XX_PKT_OUTPUT_CTL_RING_ENB;
   octeon_write_csr(
       oct, CN23XX_VF_SLI_OQ_PKT_CONTROL(q_no), reg_val);
  }
 }

 return 0;
}
