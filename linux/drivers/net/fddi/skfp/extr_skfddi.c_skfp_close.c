
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int QueueSkb; int SendSkbQueue; } ;
struct s_smc {TYPE_1__ os; } ;
struct net_device {int irq; } ;
typedef TYPE_1__ skfddi_priv ;


 int CLI_FBI () ;
 int MAX_TX_QUEUE_LEN ;
 int card_stop (struct s_smc*) ;
 int free_irq (int ,struct net_device*) ;
 int mac_drv_clear_rx_queue (struct s_smc*) ;
 int mac_drv_clear_tx_queue (struct s_smc*) ;
 struct s_smc* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_queue_purge (int *) ;
 int smt_reset_defaults (struct s_smc*,int) ;

__attribute__((used)) static int skfp_close(struct net_device *dev)
{
 struct s_smc *smc = netdev_priv(dev);
 skfddi_priv *bp = &smc->os;

 CLI_FBI();
 smt_reset_defaults(smc, 1);
 card_stop(smc);
 mac_drv_clear_tx_queue(smc);
 mac_drv_clear_rx_queue(smc);

 netif_stop_queue(dev);

 free_irq(dev->irq, dev);

 skb_queue_purge(&bp->SendSkbQueue);
 bp->QueueSkb = MAX_TX_QUEUE_LEN;

 return 0;
}
