
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef size_t u32 ;
struct octeon_instr_queue {scalar_t__ reset_instr_cnt; int * inst_cnt_reg; int * doorbell_reg; int max_count; int base_addr_dma; } ;
struct octeon_device {scalar_t__ msix_on; TYPE_2__* pci_dev; TYPE_1__* mmio; struct octeon_instr_queue** instr_queue; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ hw_addr; } ;


 int CN23XX_INTR_CINT_ENB ;
 int CN23XX_VF_SLI_IQ_BASE_ADDR64 (size_t) ;
 int CN23XX_VF_SLI_IQ_DOORBELL (size_t) ;
 int CN23XX_VF_SLI_IQ_INSTR_COUNT64 (size_t) ;
 int CN23XX_VF_SLI_IQ_SIZE (size_t) ;
 int dev_dbg (int *,char*,size_t,int *,int *) ;
 int octeon_write_csr (struct octeon_device*,int ,int ) ;
 int octeon_write_csr64 (struct octeon_device*,int ,int ) ;
 int readq (int *) ;
 int writeq (int,int *) ;

__attribute__((used)) static void cn23xx_setup_vf_iq_regs(struct octeon_device *oct, u32 iq_no)
{
 struct octeon_instr_queue *iq = oct->instr_queue[iq_no];
 u64 pkt_in_done;


 octeon_write_csr64(oct, CN23XX_VF_SLI_IQ_BASE_ADDR64(iq_no),
      iq->base_addr_dma);
 octeon_write_csr(oct, CN23XX_VF_SLI_IQ_SIZE(iq_no), iq->max_count);




 iq->doorbell_reg =
     (u8 *)oct->mmio[0].hw_addr + CN23XX_VF_SLI_IQ_DOORBELL(iq_no);
 iq->inst_cnt_reg =
     (u8 *)oct->mmio[0].hw_addr + CN23XX_VF_SLI_IQ_INSTR_COUNT64(iq_no);
 dev_dbg(&oct->pci_dev->dev, "InstQ[%d]:dbell reg @ 0x%p instcnt_reg @ 0x%p\n",
  iq_no, iq->doorbell_reg, iq->inst_cnt_reg);




 pkt_in_done = readq(iq->inst_cnt_reg);

 if (oct->msix_on) {

  writeq((pkt_in_done | CN23XX_INTR_CINT_ENB),
         iq->inst_cnt_reg);
 }
 iq->reset_instr_cnt = 0;
}
