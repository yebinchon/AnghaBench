
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct octeon_device {int int_status; scalar_t__ chip; } ;
struct octeon_cn6xxx {int intr_sum_reg64; } ;
typedef int irqreturn_t ;


 int CN6XXX_INTR_DMA0_FORCE ;
 int CN6XXX_INTR_DMA1_FORCE ;
 int CN6XXX_INTR_ERR ;
 int CN6XXX_INTR_PKT_DATA ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OCT_DEV_INTR_DMA0_FORCE ;
 int OCT_DEV_INTR_DMA1_FORCE ;
 int OCT_DEV_INTR_PKT_DATA ;
 int lio_cn6xxx_process_droq_intr_regs (struct octeon_device*) ;
 int lio_cn6xxx_process_pcie_error_intr (struct octeon_device*,int) ;
 int readq (int ) ;
 int writeq (int,int ) ;

irqreturn_t lio_cn6xxx_process_interrupt_regs(void *dev)
{
 struct octeon_device *oct = (struct octeon_device *)dev;
 struct octeon_cn6xxx *cn6xxx = (struct octeon_cn6xxx *)oct->chip;
 u64 intr64;

 intr64 = readq(cn6xxx->intr_sum_reg64);





 if (!intr64 || (intr64 == 0xFFFFFFFFFFFFFFFFULL))
  return IRQ_NONE;

 oct->int_status = 0;

 if (intr64 & CN6XXX_INTR_ERR)
  lio_cn6xxx_process_pcie_error_intr(oct, intr64);

 if (intr64 & CN6XXX_INTR_PKT_DATA) {
  lio_cn6xxx_process_droq_intr_regs(oct);
  oct->int_status |= OCT_DEV_INTR_PKT_DATA;
 }

 if (intr64 & CN6XXX_INTR_DMA0_FORCE)
  oct->int_status |= OCT_DEV_INTR_DMA0_FORCE;

 if (intr64 & CN6XXX_INTR_DMA1_FORCE)
  oct->int_status |= OCT_DEV_INTR_DMA1_FORCE;


 writeq(intr64, cn6xxx->intr_sum_reg64);

 return IRQ_HANDLED;
}
