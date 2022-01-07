
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm2835_host {scalar_t__ blocks; TYPE_1__* data; int dma_desc; } ;
struct TYPE_2__ {int flags; scalar_t__ error; } ;


 int MMC_DATA_WRITE ;
 scalar_t__ WARN_ON (int) ;
 int bcm2835_dumpregs (struct bcm2835_host*) ;
 int bcm2835_finish_data (struct bcm2835_host*) ;
 int bcm2835_transfer_pio (struct bcm2835_host*) ;

__attribute__((used)) static void bcm2835_block_irq(struct bcm2835_host *host)
{
 if (WARN_ON(!host->data)) {
  bcm2835_dumpregs(host);
  return;
 }

 if (!host->dma_desc) {
  WARN_ON(!host->blocks);
  if (host->data->error || (--host->blocks == 0))
   bcm2835_finish_data(host);
  else
   bcm2835_transfer_pio(host);
 } else if (host->data->flags & MMC_DATA_WRITE) {
  bcm2835_finish_data(host);
 }
}
