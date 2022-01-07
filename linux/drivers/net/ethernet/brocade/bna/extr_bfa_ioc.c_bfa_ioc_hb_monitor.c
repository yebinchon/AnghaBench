
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int heartbeat; } ;
struct bfa_ioc {int hb_timer; TYPE_1__ ioc_regs; int hb_count; } ;


 int BFA_IOC_HB_TOV ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int readl (int ) ;

__attribute__((used)) static void
bfa_ioc_hb_monitor(struct bfa_ioc *ioc)
{
 ioc->hb_count = readl(ioc->ioc_regs.heartbeat);
 mod_timer(&ioc->hb_timer, jiffies +
  msecs_to_jiffies(BFA_IOC_HB_TOV));
}
