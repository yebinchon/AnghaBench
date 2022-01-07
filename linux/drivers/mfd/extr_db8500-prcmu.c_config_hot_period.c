
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int lock; int work; } ;


 int MB4H_HOT_PERIOD ;
 int MBOX_BIT (int) ;
 int PRCM_MBOX_CPU_SET ;
 int PRCM_MBOX_CPU_VAL ;
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB4 ;
 scalar_t__ PRCM_REQ_MB4_HOT_PERIOD ;
 int cpu_relax () ;
 TYPE_1__ mb4_transfer ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (int ) ;
 scalar_t__ tcdm_base ;
 int wait_for_completion (int *) ;
 int writeb (int ,scalar_t__) ;
 int writel (int,int ) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int config_hot_period(u16 val)
{
 mutex_lock(&mb4_transfer.lock);

 while (readl(PRCM_MBOX_CPU_VAL) & MBOX_BIT(4))
  cpu_relax();

 writew(val, (tcdm_base + PRCM_REQ_MB4_HOT_PERIOD));
 writeb(MB4H_HOT_PERIOD, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB4));

 writel(MBOX_BIT(4), PRCM_MBOX_CPU_SET);
 wait_for_completion(&mb4_transfer.work);

 mutex_unlock(&mb4_transfer.lock);

 return 0;
}
