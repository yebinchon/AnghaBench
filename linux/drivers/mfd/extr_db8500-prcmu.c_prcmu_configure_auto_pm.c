
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct prcmu_auto_pm_config {int sva_auto_pm_enable; int sia_auto_pm_enable; int sva_power_on; int sia_power_on; int sva_policy; int sia_policy; } ;
struct TYPE_2__ {int auto_pm_enabled; int auto_pm_lock; } ;


 int BUG_ON (int) ;
 int PRCMU_AUTO_PM_ON ;
 scalar_t__ PRCM_REQ_MB2_AUTO_PM_IDLE ;
 scalar_t__ PRCM_REQ_MB2_AUTO_PM_SLEEP ;
 TYPE_1__ mb2_transfer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tcdm_base ;
 int writel (int,scalar_t__) ;

void prcmu_configure_auto_pm(struct prcmu_auto_pm_config *sleep,
 struct prcmu_auto_pm_config *idle)
{
 u32 sleep_cfg;
 u32 idle_cfg;
 unsigned long flags;

 BUG_ON((sleep == ((void*)0)) || (idle == ((void*)0)));

 sleep_cfg = (sleep->sva_auto_pm_enable & 0xF);
 sleep_cfg = ((sleep_cfg << 4) | (sleep->sia_auto_pm_enable & 0xF));
 sleep_cfg = ((sleep_cfg << 8) | (sleep->sva_power_on & 0xFF));
 sleep_cfg = ((sleep_cfg << 8) | (sleep->sia_power_on & 0xFF));
 sleep_cfg = ((sleep_cfg << 4) | (sleep->sva_policy & 0xF));
 sleep_cfg = ((sleep_cfg << 4) | (sleep->sia_policy & 0xF));

 idle_cfg = (idle->sva_auto_pm_enable & 0xF);
 idle_cfg = ((idle_cfg << 4) | (idle->sia_auto_pm_enable & 0xF));
 idle_cfg = ((idle_cfg << 8) | (idle->sva_power_on & 0xFF));
 idle_cfg = ((idle_cfg << 8) | (idle->sia_power_on & 0xFF));
 idle_cfg = ((idle_cfg << 4) | (idle->sva_policy & 0xF));
 idle_cfg = ((idle_cfg << 4) | (idle->sia_policy & 0xF));

 spin_lock_irqsave(&mb2_transfer.auto_pm_lock, flags);






 writel(sleep_cfg, (tcdm_base + PRCM_REQ_MB2_AUTO_PM_SLEEP));
 writel(idle_cfg, (tcdm_base + PRCM_REQ_MB2_AUTO_PM_IDLE));

 mb2_transfer.auto_pm_enabled =
  ((sleep->sva_auto_pm_enable == PRCMU_AUTO_PM_ON) ||
   (sleep->sia_auto_pm_enable == PRCMU_AUTO_PM_ON) ||
   (idle->sva_auto_pm_enable == PRCMU_AUTO_PM_ON) ||
   (idle->sia_auto_pm_enable == PRCMU_AUTO_PM_ON));

 spin_unlock_irqrestore(&mb2_transfer.auto_pm_lock, flags);
}
