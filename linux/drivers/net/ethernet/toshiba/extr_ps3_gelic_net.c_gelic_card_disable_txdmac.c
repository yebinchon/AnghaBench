
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gelic_card {int dummy; } ;


 int bus_id (struct gelic_card*) ;
 int ctodev (struct gelic_card*) ;
 int dev_err (int ,char*,int) ;
 int dev_id (struct gelic_card*) ;
 int lv1_net_stop_tx_dma (int ,int ) ;

__attribute__((used)) static void gelic_card_disable_txdmac(struct gelic_card *card)
{
 int status;


 status = lv1_net_stop_tx_dma(bus_id(card), dev_id(card));
 if (status)
  dev_err(ctodev(card),
   "lv1_net_stop_tx_dma failed, status=%d\n", status);
}
