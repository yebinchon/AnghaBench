
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_card {int rx_chain; int tx_chain; int aneg_timer; int tx_timer; int napi; } ;
struct net_device {int irq; } ;


 int SPIDER_NET_DMA_TX_FEND_VALUE ;
 int SPIDER_NET_GDTDMACCNTR ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spider_net_disable_interrupts (struct spider_net_card*) ;
 int spider_net_disable_rxdmac (struct spider_net_card*) ;
 int spider_net_free_chain (struct spider_net_card*,int *) ;
 int spider_net_free_rx_chain_contents (struct spider_net_card*) ;
 int spider_net_release_tx_chain (struct spider_net_card*,int) ;
 int spider_net_write_reg (struct spider_net_card*,int ,int ) ;

int
spider_net_stop(struct net_device *netdev)
{
 struct spider_net_card *card = netdev_priv(netdev);

 napi_disable(&card->napi);
 netif_carrier_off(netdev);
 netif_stop_queue(netdev);
 del_timer_sync(&card->tx_timer);
 del_timer_sync(&card->aneg_timer);

 spider_net_disable_interrupts(card);

 free_irq(netdev->irq, netdev);

 spider_net_write_reg(card, SPIDER_NET_GDTDMACCNTR,
        SPIDER_NET_DMA_TX_FEND_VALUE);


 spider_net_disable_rxdmac(card);


 spider_net_release_tx_chain(card, 1);
 spider_net_free_rx_chain_contents(card);

 spider_net_free_chain(card, &card->tx_chain);
 spider_net_free_chain(card, &card->rx_chain);

 return 0;
}
