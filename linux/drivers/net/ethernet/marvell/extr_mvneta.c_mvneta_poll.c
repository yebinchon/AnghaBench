
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct napi_struct {int dev; } ;
struct mvneta_port {int cause_rx_tx; scalar_t__ neta_armada3700; TYPE_1__* dev; int * rxqs; scalar_t__ bm_priv; int ports; } ;
struct mvneta_pcpu_port {int cause_rx_tx; } ;
struct TYPE_2__ {int irq; } ;


 int MVNETA_CAUSE_LINK_CHANGE ;
 int MVNETA_CAUSE_PHY_STATUS_CHANGE ;
 int MVNETA_INTR_MISC_CAUSE ;
 int MVNETA_INTR_NEW_CAUSE ;
 int MVNETA_INTR_NEW_MASK ;
 int MVNETA_MISCINTR_INTR_MASK ;
 int MVNETA_RX_INTR_MASK (int ) ;
 int MVNETA_TX_INTR_MASK (int ) ;
 int MVNETA_TX_INTR_MASK_ALL ;
 int enable_percpu_irq (int ,int ) ;
 int fls (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mvneta_link_change (struct mvneta_port*) ;
 int mvneta_rx_hwbm (struct napi_struct*,struct mvneta_port*,int,int *) ;
 int mvneta_rx_swbm (struct napi_struct*,struct mvneta_port*,int,int *) ;
 int mvneta_tx_done_gbe (struct mvneta_port*,int) ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;
 int napi_complete (struct napi_struct*) ;
 int napi_complete_done (struct napi_struct*,int) ;
 struct mvneta_port* netdev_priv (int ) ;
 int netif_running (TYPE_1__*) ;
 int rxq_number ;
 struct mvneta_pcpu_port* this_cpu_ptr (int ) ;
 int txq_number ;

__attribute__((used)) static int mvneta_poll(struct napi_struct *napi, int budget)
{
 int rx_done = 0;
 u32 cause_rx_tx;
 int rx_queue;
 struct mvneta_port *pp = netdev_priv(napi->dev);
 struct mvneta_pcpu_port *port = this_cpu_ptr(pp->ports);

 if (!netif_running(pp->dev)) {
  napi_complete(napi);
  return rx_done;
 }


 cause_rx_tx = mvreg_read(pp, MVNETA_INTR_NEW_CAUSE);
 if (cause_rx_tx & MVNETA_MISCINTR_INTR_MASK) {
  u32 cause_misc = mvreg_read(pp, MVNETA_INTR_MISC_CAUSE);

  mvreg_write(pp, MVNETA_INTR_MISC_CAUSE, 0);

  if (cause_misc & (MVNETA_CAUSE_PHY_STATUS_CHANGE |
      MVNETA_CAUSE_LINK_CHANGE))
   mvneta_link_change(pp);
 }


 if (cause_rx_tx & MVNETA_TX_INTR_MASK_ALL) {
  mvneta_tx_done_gbe(pp, (cause_rx_tx & MVNETA_TX_INTR_MASK_ALL));
  cause_rx_tx &= ~MVNETA_TX_INTR_MASK_ALL;
 }




 rx_queue = fls(((cause_rx_tx >> 8) & 0xff));

 cause_rx_tx |= pp->neta_armada3700 ? pp->cause_rx_tx :
  port->cause_rx_tx;

 if (rx_queue) {
  rx_queue = rx_queue - 1;
  if (pp->bm_priv)
   rx_done = mvneta_rx_hwbm(napi, pp, budget,
       &pp->rxqs[rx_queue]);
  else
   rx_done = mvneta_rx_swbm(napi, pp, budget,
       &pp->rxqs[rx_queue]);
 }

 if (rx_done < budget) {
  cause_rx_tx = 0;
  napi_complete_done(napi, rx_done);

  if (pp->neta_armada3700) {
   unsigned long flags;

   local_irq_save(flags);
   mvreg_write(pp, MVNETA_INTR_NEW_MASK,
        MVNETA_RX_INTR_MASK(rxq_number) |
        MVNETA_TX_INTR_MASK(txq_number) |
        MVNETA_MISCINTR_INTR_MASK);
   local_irq_restore(flags);
  } else {
   enable_percpu_irq(pp->dev->irq, 0);
  }
 }

 if (pp->neta_armada3700)
  pp->cause_rx_tx = cause_rx_tx;
 else
  port->cause_rx_tx = cause_rx_tx;

 return rx_done;
}
