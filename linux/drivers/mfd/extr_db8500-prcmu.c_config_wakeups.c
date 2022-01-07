
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int dbb_irqs; int dbb_wakeups; int abb_events; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 int const MB0H_CONFIG_WAKEUPS_EXE ;
 int const MB0H_CONFIG_WAKEUPS_SLEEP ;
 int MBOX_BIT (int ) ;
 scalar_t__ PRCM_MBOX_CPU_SET ;
 int PRCM_MBOX_CPU_VAL ;
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB0 ;
 scalar_t__ PRCM_REQ_MB0_WAKEUP_4500 ;
 scalar_t__ PRCM_REQ_MB0_WAKEUP_8500 ;
 int WAKEUP_BIT_AC_SLEEP_ACK ;
 int WAKEUP_BIT_AC_WAKE_ACK ;
 int cpu_relax () ;
 TYPE_2__ mb0_transfer ;
 int readl (int ) ;
 scalar_t__ tcdm_base ;
 int writeb (int const,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void config_wakeups(void)
{
 const u8 header[2] = {
  MB0H_CONFIG_WAKEUPS_EXE,
  MB0H_CONFIG_WAKEUPS_SLEEP
 };
 static u32 last_dbb_events;
 static u32 last_abb_events;
 u32 dbb_events;
 u32 abb_events;
 unsigned int i;

 dbb_events = mb0_transfer.req.dbb_irqs | mb0_transfer.req.dbb_wakeups;
 dbb_events |= (WAKEUP_BIT_AC_WAKE_ACK | WAKEUP_BIT_AC_SLEEP_ACK);

 abb_events = mb0_transfer.req.abb_events;

 if ((dbb_events == last_dbb_events) && (abb_events == last_abb_events))
  return;

 for (i = 0; i < 2; i++) {
  while (readl(PRCM_MBOX_CPU_VAL) & MBOX_BIT(0))
   cpu_relax();
  writel(dbb_events, (tcdm_base + PRCM_REQ_MB0_WAKEUP_8500));
  writel(abb_events, (tcdm_base + PRCM_REQ_MB0_WAKEUP_4500));
  writeb(header[i], (tcdm_base + PRCM_MBOX_HEADER_REQ_MB0));
  writel(MBOX_BIT(0), PRCM_MBOX_CPU_SET);
 }
 last_dbb_events = dbb_events;
 last_abb_events = abb_events;
}
