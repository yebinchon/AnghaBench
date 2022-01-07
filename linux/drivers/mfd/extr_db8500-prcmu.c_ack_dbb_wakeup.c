
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int MB0H_READ_WAKEUP_ACK ;
 int MBOX_BIT (int ) ;
 int PRCM_MBOX_CPU_SET ;
 int PRCM_MBOX_CPU_VAL ;
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB0 ;
 int cpu_relax () ;
 TYPE_1__ mb0_transfer ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tcdm_base ;
 int writeb (int ,scalar_t__) ;
 int writel (int,int ) ;

__attribute__((used)) static void ack_dbb_wakeup(void)
{
 unsigned long flags;

 spin_lock_irqsave(&mb0_transfer.lock, flags);

 while (readl(PRCM_MBOX_CPU_VAL) & MBOX_BIT(0))
  cpu_relax();

 writeb(MB0H_READ_WAKEUP_ACK, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB0));
 writel(MBOX_BIT(0), PRCM_MBOX_CPU_SET);

 spin_unlock_irqrestore(&mb0_transfer.lock, flags);
}
