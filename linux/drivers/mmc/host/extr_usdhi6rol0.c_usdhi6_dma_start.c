
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usdhi6_host {int chan_tx; int chan_rx; TYPE_2__* mrq; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int flags; } ;


 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int ENODEV ;
 int MMC_DATA_READ ;
 int usdhi6_dma_setup (struct usdhi6_host*,int ,int ) ;

__attribute__((used)) static int usdhi6_dma_start(struct usdhi6_host *host)
{
 if (!host->chan_rx || !host->chan_tx)
  return -ENODEV;

 if (host->mrq->data->flags & MMC_DATA_READ)
  return usdhi6_dma_setup(host, host->chan_rx, DMA_DEV_TO_MEM);

 return usdhi6_dma_setup(host, host->chan_tx, DMA_MEM_TO_DEV);
}
