
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; int work; } ;


 int HOTMON_CONFIG_HIGH ;
 int HOTMON_CONFIG_LOW ;
 int MB4H_HOTMON ;
 int MBOX_BIT (int) ;
 int PRCM_MBOX_CPU_SET ;
 int PRCM_MBOX_CPU_VAL ;
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB4 ;
 scalar_t__ PRCM_REQ_MB4_HOTMON_CONFIG ;
 scalar_t__ PRCM_REQ_MB4_HOTMON_HIGH ;
 scalar_t__ PRCM_REQ_MB4_HOTMON_LOW ;
 int cpu_relax () ;
 TYPE_1__ mb4_transfer ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (int ) ;
 scalar_t__ tcdm_base ;
 int wait_for_completion (int *) ;
 int writeb (int,scalar_t__) ;
 int writel (int,int ) ;

int db8500_prcmu_config_hotmon(u8 low, u8 high)
{
 mutex_lock(&mb4_transfer.lock);

 while (readl(PRCM_MBOX_CPU_VAL) & MBOX_BIT(4))
  cpu_relax();

 writeb(low, (tcdm_base + PRCM_REQ_MB4_HOTMON_LOW));
 writeb(high, (tcdm_base + PRCM_REQ_MB4_HOTMON_HIGH));
 writeb((HOTMON_CONFIG_LOW | HOTMON_CONFIG_HIGH),
  (tcdm_base + PRCM_REQ_MB4_HOTMON_CONFIG));
 writeb(MB4H_HOTMON, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB4));

 writel(MBOX_BIT(4), PRCM_MBOX_CPU_SET);
 wait_for_completion(&mb4_transfer.work);

 mutex_unlock(&mb4_transfer.lock);

 return 0;
}
