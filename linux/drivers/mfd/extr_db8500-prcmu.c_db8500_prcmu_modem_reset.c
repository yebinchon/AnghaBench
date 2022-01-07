
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int work; } ;


 int MB1H_RESET_MODEM ;
 int MBOX_BIT (int) ;
 int PRCM_MBOX_CPU_SET ;
 int PRCM_MBOX_CPU_VAL ;
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB1 ;
 int cpu_relax () ;
 TYPE_1__ mb1_transfer ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (int ) ;
 scalar_t__ tcdm_base ;
 int wait_for_completion (int *) ;
 int writeb (int ,scalar_t__) ;
 int writel (int,int ) ;

void db8500_prcmu_modem_reset(void)
{
 mutex_lock(&mb1_transfer.lock);

 while (readl(PRCM_MBOX_CPU_VAL) & MBOX_BIT(1))
  cpu_relax();

 writeb(MB1H_RESET_MODEM, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB1));
 writel(MBOX_BIT(1), PRCM_MBOX_CPU_SET);
 wait_for_completion(&mb1_transfer.work);






 mutex_unlock(&mb1_transfer.lock);
}
