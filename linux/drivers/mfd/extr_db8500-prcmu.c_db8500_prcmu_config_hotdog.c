
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; int work; } ;


 int MB4H_HOTDOG ;
 int MBOX_BIT (int) ;
 int PRCM_MBOX_CPU_SET ;
 int PRCM_MBOX_CPU_VAL ;
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB4 ;
 scalar_t__ PRCM_REQ_MB4_HOTDOG_THRESHOLD ;
 int cpu_relax () ;
 TYPE_1__ mb4_transfer ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (int ) ;
 scalar_t__ tcdm_base ;
 int wait_for_completion (int *) ;
 int writeb (int ,scalar_t__) ;
 int writel (int,int ) ;

int db8500_prcmu_config_hotdog(u8 threshold)
{
 mutex_lock(&mb4_transfer.lock);

 while (readl(PRCM_MBOX_CPU_VAL) & MBOX_BIT(4))
  cpu_relax();

 writeb(threshold, (tcdm_base + PRCM_REQ_MB4_HOTDOG_THRESHOLD));
 writeb(MB4H_HOTDOG, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB4));

 writel(MBOX_BIT(4), PRCM_MBOX_CPU_SET);
 wait_for_completion(&mb4_transfer.work);

 mutex_unlock(&mb4_transfer.lock);

 return 0;
}
