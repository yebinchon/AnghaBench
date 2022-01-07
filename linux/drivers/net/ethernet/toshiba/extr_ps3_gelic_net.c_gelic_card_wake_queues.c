
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gelic_card {scalar_t__* netdev; } ;


 size_t GELIC_PORT_ETHERNET_0 ;
 size_t GELIC_PORT_WIRELESS ;
 int netif_wake_queue (scalar_t__) ;

__attribute__((used)) static void gelic_card_wake_queues(struct gelic_card *card)
{
 netif_wake_queue(card->netdev[GELIC_PORT_ETHERNET_0]);

 if (card->netdev[GELIC_PORT_WIRELESS])
  netif_wake_queue(card->netdev[GELIC_PORT_WIRELESS]);
}
