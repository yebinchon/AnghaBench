
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sbmac_softc {int sbm_rxdma; int napi; int sbm_imr; int sbm_txdma; int sbm_isr; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int M_MAC_COUNTER_ADDR ;
 int M_MAC_INT_CHANNEL ;
 int SBMAC_MAX_RXDESCR ;
 int S_MAC_RX_CH0 ;
 int S_MAC_TX_CH0 ;
 int __napi_schedule (int *) ;
 int __raw_readq (int ) ;
 int __raw_writeq (int ,int ) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct sbmac_softc* netdev_priv (struct net_device*) ;
 int sbdma_rx_process (struct sbmac_softc*,int *,int,int ) ;
 int sbdma_tx_process (struct sbmac_softc*,int *,int ) ;

__attribute__((used)) static irqreturn_t sbmac_intr(int irq,void *dev_instance)
{
 struct net_device *dev = (struct net_device *) dev_instance;
 struct sbmac_softc *sc = netdev_priv(dev);
 uint64_t isr;
 int handled = 0;






 isr = __raw_readq(sc->sbm_isr) & ~M_MAC_COUNTER_ADDR;

 if (isr == 0)
  return IRQ_RETVAL(0);
 handled = 1;





 if (isr & (M_MAC_INT_CHANNEL << S_MAC_TX_CH0))
  sbdma_tx_process(sc,&(sc->sbm_txdma), 0);

 if (isr & (M_MAC_INT_CHANNEL << S_MAC_RX_CH0)) {
  if (napi_schedule_prep(&sc->napi)) {
   __raw_writeq(0, sc->sbm_imr);
   __napi_schedule(&sc->napi);

  }
  else {

   sbdma_rx_process(sc,&(sc->sbm_rxdma),
      SBMAC_MAX_RXDESCR * 2, 0);
  }
 }
 return IRQ_RETVAL(handled);
}
