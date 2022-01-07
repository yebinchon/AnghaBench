
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* def; } ;
struct spider_net_card {int aneg_timer; int tx_chain; int rx_chain; int napi; int * low_watermark; TYPE_2__ phy; int medium; scalar_t__ aneg_count; } ;
struct net_device {int name; int irq; } ;
struct TYPE_3__ {scalar_t__ phy_id; } ;


 int BCM54XX_COPPER ;
 int EBUSY ;
 int IRQF_SHARED ;
 scalar_t__ SPIDER_NET_ANEG_TIMER ;
 int del_timer_sync (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int napi_enable (int *) ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct net_device*) ;
 int spider_net_alloc_rx_skbs (struct spider_net_card*) ;
 int spider_net_enable_card (struct spider_net_card*) ;
 int spider_net_enable_interrupts (struct spider_net_card*) ;
 int spider_net_free_chain (struct spider_net_card*,int *) ;
 int spider_net_free_rx_chain_contents (struct spider_net_card*) ;
 int spider_net_init_chain (struct spider_net_card*,int *) ;
 int spider_net_init_firmware (struct spider_net_card*) ;
 int spider_net_interrupt ;
 int spider_net_set_multi (struct net_device*) ;
 int spider_net_setup_aneg (struct spider_net_card*) ;

int
spider_net_open(struct net_device *netdev)
{
 struct spider_net_card *card = netdev_priv(netdev);
 int result;

 result = spider_net_init_firmware(card);
 if (result)
  goto init_firmware_failed;


 card->aneg_count = 0;
 card->medium = BCM54XX_COPPER;
 spider_net_setup_aneg(card);
 if (card->phy.def->phy_id)
  mod_timer(&card->aneg_timer, jiffies + SPIDER_NET_ANEG_TIMER);

 result = spider_net_init_chain(card, &card->tx_chain);
 if (result)
  goto alloc_tx_failed;
 card->low_watermark = ((void*)0);

 result = spider_net_init_chain(card, &card->rx_chain);
 if (result)
  goto alloc_rx_failed;


 result = spider_net_alloc_rx_skbs(card);
 if (result)
  goto alloc_skbs_failed;

 spider_net_set_multi(netdev);



 result = -EBUSY;
 if (request_irq(netdev->irq, spider_net_interrupt,
        IRQF_SHARED, netdev->name, netdev))
  goto register_int_failed;

 spider_net_enable_card(card);

 netif_start_queue(netdev);
 netif_carrier_on(netdev);
 napi_enable(&card->napi);

 spider_net_enable_interrupts(card);

 return 0;

register_int_failed:
 spider_net_free_rx_chain_contents(card);
alloc_skbs_failed:
 spider_net_free_chain(card, &card->rx_chain);
alloc_rx_failed:
 spider_net_free_chain(card, &card->tx_chain);
alloc_tx_failed:
 del_timer_sync(&card->aneg_timer);
init_firmware_failed:
 return result;
}
