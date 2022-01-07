
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct fimc_is {int slock; } ;
typedef int irqreturn_t ;


 unsigned long FIMC_IS_INT_FRAME_DONE_ISP ;
 unsigned long FIMC_IS_INT_GENERAL ;
 int IRQ_HANDLED ;
 int MCUCTL_REG_INTSR1 ;
 int fimc_is_general_irq_handler (struct fimc_is*) ;
 int fimc_isp_irq_handler (struct fimc_is*) ;
 unsigned long mcuctl_read (struct fimc_is*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t fimc_is_irq_handler(int irq, void *priv)
{
 struct fimc_is *is = priv;
 unsigned long flags;
 u32 status;

 spin_lock_irqsave(&is->slock, flags);
 status = mcuctl_read(is, MCUCTL_REG_INTSR1);

 if (status & (1UL << FIMC_IS_INT_GENERAL))
  fimc_is_general_irq_handler(is);

 if (status & (1UL << FIMC_IS_INT_FRAME_DONE_ISP))
  fimc_isp_irq_handler(is);

 spin_unlock_irqrestore(&is->slock, flags);
 return IRQ_HANDLED;
}
