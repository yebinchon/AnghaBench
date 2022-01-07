
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {scalar_t__ duplex; int flow_status; int speed; int netdev; int port; int hw; } ;


 scalar_t__ DUPLEX_FULL ;
 int LED_BLK_OFF ;
 int LED_REG_ON ;
 int LED_SYNC_OFF ;
 int LNK_LED_REG ;
 int SK_REG (int ,int ) ;
 int link ;
 int netif_carrier_on (int ) ;
 int netif_info (struct skge_port*,int ,int ,char*,int ,char*,int ) ;
 int netif_wake_queue (int ) ;
 int skge_pause (int ) ;
 int skge_write8 (int ,int ,int) ;

__attribute__((used)) static void skge_link_up(struct skge_port *skge)
{
 skge_write8(skge->hw, SK_REG(skge->port, LNK_LED_REG),
      LED_BLK_OFF|LED_SYNC_OFF|LED_REG_ON);

 netif_carrier_on(skge->netdev);
 netif_wake_queue(skge->netdev);

 netif_info(skge, link, skge->netdev,
     "Link is up at %d Mbps, %s duplex, flow control %s\n",
     skge->speed,
     skge->duplex == DUPLEX_FULL ? "full" : "half",
     skge_pause(skge->flow_status));
}
