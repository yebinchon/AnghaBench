
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gelic_descr {int bus_addr; } ;
struct gelic_card {int tx_dma_progress; } ;


 scalar_t__ GELIC_DESCR_DMA_CARDOWNED ;
 int bus_id (struct gelic_card*) ;
 int ctodev (struct gelic_card*) ;
 int dev_id (struct gelic_card*) ;
 int dev_info (int ,char*,int) ;
 scalar_t__ gelic_descr_get_status (struct gelic_descr*) ;
 int lv1_net_start_tx_dma (int ,int ,int ,int ) ;

__attribute__((used)) static int gelic_card_kick_txdma(struct gelic_card *card,
     struct gelic_descr *descr)
{
 int status = 0;

 if (card->tx_dma_progress)
  return 0;

 if (gelic_descr_get_status(descr) == GELIC_DESCR_DMA_CARDOWNED) {
  card->tx_dma_progress = 1;
  status = lv1_net_start_tx_dma(bus_id(card), dev_id(card),
           descr->bus_addr, 0);
  if (status) {
   card->tx_dma_progress = 0;
   dev_info(ctodev(card), "lv1_net_start_txdma failed," "status=%d\n", status);

  }
 }
 return status;
}
