
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; int work; } ;


 int MBOX_BIT (int) ;
 int PRCM_MBOX_CPU_SET ;
 int PRCM_MBOX_CPU_VAL ;
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB4 ;
 scalar_t__ PRCM_REQ_MB4_A9WDOG_0 ;
 scalar_t__ PRCM_REQ_MB4_A9WDOG_1 ;
 scalar_t__ PRCM_REQ_MB4_A9WDOG_2 ;
 scalar_t__ PRCM_REQ_MB4_A9WDOG_3 ;
 int cpu_relax () ;
 TYPE_1__ mb4_transfer ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (int ) ;
 scalar_t__ tcdm_base ;
 int wait_for_completion (int *) ;
 int writeb (int ,scalar_t__) ;
 int writel (int,int ) ;

__attribute__((used)) static int prcmu_a9wdog(u8 cmd, u8 d0, u8 d1, u8 d2, u8 d3)
{

 mutex_lock(&mb4_transfer.lock);

 while (readl(PRCM_MBOX_CPU_VAL) & MBOX_BIT(4))
  cpu_relax();

 writeb(d0, (tcdm_base + PRCM_REQ_MB4_A9WDOG_0));
 writeb(d1, (tcdm_base + PRCM_REQ_MB4_A9WDOG_1));
 writeb(d2, (tcdm_base + PRCM_REQ_MB4_A9WDOG_2));
 writeb(d3, (tcdm_base + PRCM_REQ_MB4_A9WDOG_3));

 writeb(cmd, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB4));

 writel(MBOX_BIT(4), PRCM_MBOX_CPU_SET);
 wait_for_completion(&mb4_transfer.work);

 mutex_unlock(&mb4_transfer.lock);

 return 0;

}
