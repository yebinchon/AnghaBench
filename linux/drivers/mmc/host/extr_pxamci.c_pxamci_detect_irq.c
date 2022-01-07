
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxamci_host {int detect_delay_ms; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mmc_detect_change (void*,int ) ;
 struct pxamci_host* mmc_priv (void*) ;
 int msecs_to_jiffies (int ) ;

__attribute__((used)) static irqreturn_t pxamci_detect_irq(int irq, void *devid)
{
 struct pxamci_host *host = mmc_priv(devid);

 mmc_detect_change(devid, msecs_to_jiffies(host->detect_delay_ms));
 return IRQ_HANDLED;
}
