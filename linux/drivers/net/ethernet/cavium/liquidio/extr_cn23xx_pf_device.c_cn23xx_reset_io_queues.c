
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ pf_srn; scalar_t__ num_pf_rings; } ;
struct octeon_device {TYPE_2__* pci_dev; TYPE_1__ sriov_info; } ;
struct TYPE_4__ {int dev; } ;


 int CN23XX_PKT_INPUT_CTL_QUIET ;
 int CN23XX_PKT_INPUT_CTL_RST ;
 int CN23XX_SLI_IQ_PKT_CONTROL64 (scalar_t__) ;
 int READ_ONCE (int) ;
 int WRITE_ONCE (int,int) ;
 int dev_err (int *,char*,scalar_t__) ;
 int octeon_read_csr64 (struct octeon_device*,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int) ;

__attribute__((used)) static int cn23xx_reset_io_queues(struct octeon_device *oct)
{
 int ret_val = 0;
 u64 d64;
 u32 q_no, srn, ern;
 u32 loop = 1000;

 srn = oct->sriov_info.pf_srn;
 ern = srn + oct->sriov_info.num_pf_rings;





 for (q_no = srn; q_no < ern; q_no++) {

  d64 = octeon_read_csr64(oct, CN23XX_SLI_IQ_PKT_CONTROL64(q_no));
  d64 = d64 | CN23XX_PKT_INPUT_CTL_RST;
  octeon_write_csr64(oct, CN23XX_SLI_IQ_PKT_CONTROL64(q_no), d64);
 }


 for (q_no = srn; q_no < ern; q_no++) {
  u64 reg_val = octeon_read_csr64(oct,
     CN23XX_SLI_IQ_PKT_CONTROL64(q_no));
  while ((READ_ONCE(reg_val) & CN23XX_PKT_INPUT_CTL_RST) &&
         !(READ_ONCE(reg_val) & CN23XX_PKT_INPUT_CTL_QUIET) &&
         loop--) {
   WRITE_ONCE(reg_val, octeon_read_csr64(
       oct, CN23XX_SLI_IQ_PKT_CONTROL64(q_no)));
  }
  if (!loop) {
   dev_err(&oct->pci_dev->dev,
    "clearing the reset reg failed or setting the quiet reg failed for qno: %u\n",
    q_no);
   return -1;
  }
  WRITE_ONCE(reg_val, READ_ONCE(reg_val) &
   ~CN23XX_PKT_INPUT_CTL_RST);
  octeon_write_csr64(oct, CN23XX_SLI_IQ_PKT_CONTROL64(q_no),
       READ_ONCE(reg_val));

  WRITE_ONCE(reg_val, octeon_read_csr64(
      oct, CN23XX_SLI_IQ_PKT_CONTROL64(q_no)));
  if (READ_ONCE(reg_val) & CN23XX_PKT_INPUT_CTL_RST) {
   dev_err(&oct->pci_dev->dev,
    "clearing the reset failed for qno: %u\n",
    q_no);
   ret_val = -1;
  }
 }

 return ret_val;
}
