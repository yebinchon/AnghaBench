
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_eth_private {int lock; int napi; int irq_enabled; struct sh_eth_cpu_data* cd; } ;
struct sh_eth_cpu_data {int tx_check; int eesr_err_check; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int EESIPR ;
 int EESIPR_ECIIP ;
 int EESR ;
 int EESR_ECI ;
 int EESR_RX_CHECK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __napi_schedule (int *) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int,int) ;
 int netif_wake_queue (struct net_device*) ;
 int sh_eth_emac_interrupt (struct net_device*) ;
 int sh_eth_error (struct net_device*,int) ;
 int sh_eth_read (struct net_device*,int ) ;
 int sh_eth_tx_free (struct net_device*,int) ;
 int sh_eth_write (struct net_device*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t sh_eth_interrupt(int irq, void *netdev)
{
 struct net_device *ndev = netdev;
 struct sh_eth_private *mdp = netdev_priv(ndev);
 struct sh_eth_cpu_data *cd = mdp->cd;
 irqreturn_t ret = IRQ_NONE;
 u32 intr_status, intr_enable;

 spin_lock(&mdp->lock);


 intr_status = sh_eth_read(ndev, EESR);






 intr_enable = sh_eth_read(ndev, EESIPR);
 intr_status &= intr_enable | EESIPR_ECIIP;
 if (intr_status & (EESR_RX_CHECK | cd->tx_check | EESR_ECI |
      cd->eesr_err_check))
  ret = IRQ_HANDLED;
 else
  goto out;

 if (unlikely(!mdp->irq_enabled)) {
  sh_eth_write(ndev, 0, EESIPR);
  goto out;
 }

 if (intr_status & EESR_RX_CHECK) {
  if (napi_schedule_prep(&mdp->napi)) {

   sh_eth_write(ndev, intr_enable & ~EESR_RX_CHECK,
         EESIPR);
   __napi_schedule(&mdp->napi);
  } else {
   netdev_warn(ndev,
        "ignoring interrupt, status 0x%08x, mask 0x%08x.\n",
        intr_status, intr_enable);
  }
 }


 if (intr_status & cd->tx_check) {

  sh_eth_write(ndev, intr_status & cd->tx_check, EESR);

  sh_eth_tx_free(ndev, 1);
  netif_wake_queue(ndev);
 }


 if (intr_status & EESR_ECI)
  sh_eth_emac_interrupt(ndev);

 if (intr_status & cd->eesr_err_check) {

  sh_eth_write(ndev, intr_status & cd->eesr_err_check, EESR);

  sh_eth_error(ndev, intr_status);
 }

out:
 spin_unlock(&mdp->lock);

 return ret;
}
