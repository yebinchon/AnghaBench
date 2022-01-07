
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rhine_private {int napi; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int IntrLinkChange ;
 int IntrStatsMax ;
 int RHINE_EVENT ;
 int RHINE_EVENT_NAPI ;
 int intr ;
 int napi_schedule (int *) ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 int netif_dbg (struct rhine_private*,int ,struct net_device*,char*,int) ;
 int netif_err (struct rhine_private*,int ,struct net_device*,char*,int) ;
 int rhine_get_events (struct rhine_private*) ;
 int rhine_irq_disable (struct rhine_private*) ;

__attribute__((used)) static irqreturn_t rhine_interrupt(int irq, void *dev_instance)
{
 struct net_device *dev = dev_instance;
 struct rhine_private *rp = netdev_priv(dev);
 u32 status;
 int handled = 0;

 status = rhine_get_events(rp);

 netif_dbg(rp, intr, dev, "Interrupt, status %08x\n", status);

 if (status & RHINE_EVENT) {
  handled = 1;

  rhine_irq_disable(rp);
  napi_schedule(&rp->napi);
 }

 if (status & ~(IntrLinkChange | IntrStatsMax | RHINE_EVENT_NAPI)) {
  netif_err(rp, intr, dev, "Something Wicked happened! %08x\n",
     status);
 }

 return IRQ_RETVAL(handled);
}
