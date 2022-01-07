
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_fmc2_nfc {scalar_t__ io_base; } ;


 scalar_t__ FMC2_BCHICR ;
 int FMC2_BCHICR_CLEAR_IRQ ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void stm32_fmc2_clear_bch_irq(struct stm32_fmc2_nfc *fmc2)
{
 writel_relaxed(FMC2_BCHICR_CLEAR_IRQ, fmc2->io_base + FMC2_BCHICR);
}
