
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct net_device {int dummy; } ;
struct fec_enet_private {int mdio_done; int napi; scalar_t__ hwp; scalar_t__ link; scalar_t__ work_rx; scalar_t__ work_tx; } ;
typedef int irqreturn_t ;


 int FEC_ENET_MII ;
 scalar_t__ FEC_IEVENT ;
 scalar_t__ FEC_IMASK ;
 int FEC_NAPI_IMASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __napi_schedule (int *) ;
 int complete (int *) ;
 int fec_enet_collect_events (struct fec_enet_private*,int) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t
fec_enet_interrupt(int irq, void *dev_id)
{
 struct net_device *ndev = dev_id;
 struct fec_enet_private *fep = netdev_priv(ndev);
 uint int_events;
 irqreturn_t ret = IRQ_NONE;

 int_events = readl(fep->hwp + FEC_IEVENT);
 writel(int_events, fep->hwp + FEC_IEVENT);
 fec_enet_collect_events(fep, int_events);

 if ((fep->work_tx || fep->work_rx) && fep->link) {
  ret = IRQ_HANDLED;

  if (napi_schedule_prep(&fep->napi)) {

   writel(FEC_NAPI_IMASK, fep->hwp + FEC_IMASK);
   __napi_schedule(&fep->napi);
  }
 }

 if (int_events & FEC_ENET_MII) {
  ret = IRQ_HANDLED;
  complete(&fep->mdio_done);
 }
 return ret;
}
