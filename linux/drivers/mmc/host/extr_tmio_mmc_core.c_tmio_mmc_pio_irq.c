
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tmio_mmc_host {int sg_off; TYPE_1__* sg_ptr; scalar_t__ dma_on; struct mmc_data* data; } ;
struct mmc_data {unsigned int blksz; int flags; } ;
struct TYPE_3__ {unsigned int length; } ;


 int pr_debug (char*,...) ;
 int pr_err (char*) ;
 void* tmio_mmc_kmap_atomic (TYPE_1__*,unsigned long*) ;
 int tmio_mmc_kunmap_atomic (TYPE_1__*,unsigned long*,void*) ;
 int tmio_mmc_next_sg (struct tmio_mmc_host*) ;
 int tmio_mmc_transfer_data (struct tmio_mmc_host*,unsigned short*,unsigned int) ;

__attribute__((used)) static void tmio_mmc_pio_irq(struct tmio_mmc_host *host)
{
 struct mmc_data *data = host->data;
 void *sg_virt;
 unsigned short *buf;
 unsigned int count;
 unsigned long flags;

 if (host->dma_on) {
  pr_err("PIO IRQ in DMA mode!\n");
  return;
 } else if (!data) {
  pr_debug("Spurious PIO IRQ\n");
  return;
 }

 sg_virt = tmio_mmc_kmap_atomic(host->sg_ptr, &flags);
 buf = (unsigned short *)(sg_virt + host->sg_off);

 count = host->sg_ptr->length - host->sg_off;
 if (count > data->blksz)
  count = data->blksz;

 pr_debug("count: %08x offset: %08x flags %08x\n",
   count, host->sg_off, data->flags);


 tmio_mmc_transfer_data(host, buf, count);

 host->sg_off += count;

 tmio_mmc_kunmap_atomic(host->sg_ptr, &flags, sg_virt);

 if (host->sg_off == host->sg_ptr->length)
  tmio_mmc_next_sg(host);
}
