
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {int netdev; int port; int hw; } ;


 int LED_REG_OFF ;
 int LNK_LED_REG ;
 int SK_REG (int ,int ) ;
 int link ;
 int netif_carrier_off (int ) ;
 int netif_info (struct skge_port*,int ,int ,char*) ;
 int netif_stop_queue (int ) ;
 int skge_write8 (int ,int ,int ) ;

__attribute__((used)) static void skge_link_down(struct skge_port *skge)
{
 skge_write8(skge->hw, SK_REG(skge->port, LNK_LED_REG), LED_REG_OFF);
 netif_carrier_off(skge->netdev);
 netif_stop_queue(skge->netdev);

 netif_info(skge, link, skge->netdev, "Link is down\n");
}
