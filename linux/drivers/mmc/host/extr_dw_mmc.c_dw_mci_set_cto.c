
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct dw_mci {int irq_lock; int cto_timer; int pending_events; int bus_hz; } ;


 int CLKDIV ;
 unsigned int DIV_ROUND_UP_ULL (unsigned int,int ) ;
 int EVENT_CMD_COMPLETE ;
 scalar_t__ MSEC_PER_SEC ;
 int TMOUT ;
 scalar_t__ jiffies ;
 int mci_readl (struct dw_mci*,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline void dw_mci_set_cto(struct dw_mci *host)
{
 unsigned int cto_clks;
 unsigned int cto_div;
 unsigned int cto_ms;
 unsigned long irqflags;

 cto_clks = mci_readl(host, TMOUT) & 0xff;
 cto_div = (mci_readl(host, CLKDIV) & 0xff) * 2;
 if (cto_div == 0)
  cto_div = 1;

 cto_ms = DIV_ROUND_UP_ULL((u64)MSEC_PER_SEC * cto_clks * cto_div,
      host->bus_hz);


 cto_ms += 10;
 spin_lock_irqsave(&host->irq_lock, irqflags);
 if (!test_bit(EVENT_CMD_COMPLETE, &host->pending_events))
  mod_timer(&host->cto_timer,
   jiffies + msecs_to_jiffies(cto_ms) + 1);
 spin_unlock_irqrestore(&host->irq_lock, irqflags);
}
