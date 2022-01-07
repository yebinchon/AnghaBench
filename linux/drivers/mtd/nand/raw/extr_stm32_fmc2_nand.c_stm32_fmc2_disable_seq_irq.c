
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_fmc2_nfc {int irq_state; scalar_t__ io_base; } ;


 scalar_t__ FMC2_CSQIER ;
 int FMC2_CSQIER_TCIE ;
 int FMC2_IRQ_UNKNOWN ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void stm32_fmc2_disable_seq_irq(struct stm32_fmc2_nfc *fmc2)
{
 u32 csqier = readl_relaxed(fmc2->io_base + FMC2_CSQIER);

 csqier &= ~FMC2_CSQIER_TCIE;

 writel_relaxed(csqier, fmc2->io_base + FMC2_CSQIER);

 fmc2->irq_state = FMC2_IRQ_UNKNOWN;
}
